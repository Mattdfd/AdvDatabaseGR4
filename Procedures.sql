create or replace
procedure test_pro
        (
            p_id in int,
            p_return out medications%ROWTYPE
           
        )
    is
     no_Patient EXCEPTION;
    
    begin
     

      select *
      into p_return
      from medications
      where PatientId = p_id;
      
      if p_id = null then
      Raise no_Patient;
   
     end if;
      
   
    
     EXCEPTION
  WHEN no_patient THEN
    DBMS_OUTPUT.PUT_LINE('No patient information.');
  
    end test_pro;
    
    declare
    p_return medications%ROWTYPE;
        p_id INT := 8;
        
        
    begin
     DBMS_OUTPUT.PUT_LINE('Patient info Summary');
    test_pro(p_id,P_return);
    DBMS_OUTPUT.PUT_LINE(p_return.PHID);
    DBMS_OUTPUT.PUT_LINE(p_return.DIN);
    DBMS_OUTPUT.PUT_LINE(p_return.Name);
    DBMS_OUTPUT.PUT_LINE(p_return.quantity);
    DBMS_OUTPUT.PUT_LINE(p_return.PatientId);
    DBMS_OUTPUT.PUT_LINE('Patient info Summary');
    end;
    


    
   --Procedure to check if patient has insurance

   create or replace
procedure has_insur_pro
        (
            p_id in int,
            p_return out insurances%ROWTYPE
           
        )
    is
     
    
    begin
     

      select *
      into p_return
      from insurances
      where PatientId = p_id;


    end has_insur_pro;
    
    
    declare
    p_return insurances%ROWTYPE;
        p_id INT := 8;
        
        
    begin
     DBMS_OUTPUT.PUT_LINE('Patient info Summary');
    has_insur_pro(p_id,P_return);
    DBMS_OUTPUT.PUT_LINE(p_return.InsID);
    DBMS_OUTPUT.PUT_LINE(p_return.name);
    DBMS_OUTPUT.PUT_LINE('Patient info Summary');
    end;
    