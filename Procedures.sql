create or replace
procedure test_pro
        (
            p_id in int,
            p_meds out varchar,
            p_qty out int
        )
    IS
    begin
      DBMS_OUTPUT.PUT_LINE('Patient info Summary');

      select name,quantity
      into p_meds,p_qty
      from Medications
      join patients on patients.PatientId = Medications.PatientId
      where PatientId = p_id;
      
    DBMS_OUTPUT.PUT_LINE('Patient info Summary');
    end test_pro;
    
    