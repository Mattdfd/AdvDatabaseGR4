create or replace
procedure test_pro
        (
            p_id in int,
            p_meds out varchar,
            p_qty out int
        )
    is
     p_id medications.PatientId%type;
    p_meds medications.name%type;
     p_qty medications.quantity%type;
     no_Patient EXCEPTION;
    
    begin
      DBMS_OUTPUT.PUT_LINE('Patient info Summary');

      select PatientId, name,quantity
      into p_id,p_meds,p_qty
      from medications
      where PatientId = p_id;
      
      if p_id = null then
      Raise no_Patient;
     elsif p_id != null then
     p_meds := p_meds;
     p_qty := p_qty;
     end if;
      
    DBMS_OUTPUT.PUT_LINE('Patient info Summary');
    DBMS_OUTPUT.PUT_LINE(p_meds);
    
     EXCEPTION
  WHEN no_patient_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No patient information.');
  
    end test_pro;
    
    declare
        p_id INT := 7;
        respone VARCHAR2(500);
        
    begin
    test_pro(p_id);
    end;
    
    DEscribe test_pro;
    EXECUTE test_pro(7,,);
    
    