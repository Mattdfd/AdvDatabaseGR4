/*
Calculate the number of medication units (e.g., tablets, capsules, etc.) per daily dose given that the patient has to take a certain total dose within a specified time period
*/

CREATE OR REPLACE FUNCTION fn_calculateDailyDosage(
    in_medicationName IN medications.name%TYPE,
    in_patientId IN medications.patientId%TYPE,
    in_totalDosage IN medications.strength%TYPE,
    in_startDate IN DATE,
    in_endDate IN DATE
)
RETURN NUMBER
IS
    lv_dailyDosage NUMBER(5, 2);
    lv_medicationStrength medications.strength%TYPE;
    lv_totalDays NUMBER(5, 0);
BEGIN
    IF (in_startDate > in_endDate) THEN
        DBMS_OUTPUT.PUT_LINE('Error! The start date cannot be after the end date.');
        RETURN NULL;
    END IF;
    
    SELECT strength
    INTO lv_medicationStrength
    FROM medications
    WHERE name = in_medicationName AND patientId = in_patientId;
    
    -- Dates are inclusive, so add 1 (i.e., if you start on the 1st and end on the 2nd, you took the medicine for 2 days, not 1)
    lv_totalDays := in_endDate - in_startDate + 1;
    
    lv_dailyDosage := in_totalDosage / lv_totalDays / TO_NUMBER(lv_medicationStrength);
    
    RETURN lv_dailyDosage;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Error! No data found matching these parameters - please check the medication name and patient ID again.');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Error! Patient has more than one active prescription for ' || in_medicationName || '.');
END;

-- Function test
DECLARE
    lv_medicationName medications.name%TYPE := 'Pantoprazole';
    lv_patientId medications.patientId%TYPE := 7;
    lv_totalDosage medications.strength%TYPE := 5000;
    lv_startDate DATE := TO_DATE('01-01-2023', 'DD-MM-YYYY');
    lv_endDate DATE := TO_DATE('31-01-2023', 'DD-MM-YYYY');
    lv_dailyDosage NUMBER(5, 2);
BEGIN
    lv_dailyDosage := fn_calculateDailyDosage(
        lv_medicationName,
        lv_patientId,
        lv_totalDosage,
        lv_startDate,
        lv_endDate
    );
    
    DBMS_OUTPUT.PUT_LINE('Patient #' || lv_patientId || ' is recommended to take ' || lv_dailyDosage || ' unit(s) of ' || lv_medicationName || ' per day.');
END;