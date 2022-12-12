--Procedure to check what prescription a patient has

create or replace
procedure presc_pro
        (
            p_id in int
                  
        )
    is
     no_Patient EXCEPTION;
     patient_info EXCEPTION;
    p_return  medications%ROWTYPE;
    begin

      select *
      into p_return
      from medications
      where PatientId = p_id;
      
      if p_return.PatientId = p_id then
      Raise patient_info;

     end if;

     EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No Patient Information Found.');

  WHEN patient_info THEN
    DBMS_OUTPUT.PUT_LINE('====Patient info Summary====');
    DBMS_OUTPUT.PUT_LINE('Pharmacist ID#: ' || p_return.PHID);
    DBMS_OUTPUT.PUT_LINE('DIN#: ' || p_return.DIN);
    DBMS_OUTPUT.PUT_LINE('Medication Name: ' || p_return.Name);
    DBMS_OUTPUT.PUT_LINE('Medication Quantity: ' || p_return.quantity);
    DBMS_OUTPUT.PUT_LINE('Patient ID#: ' || p_return.PatientId);
    DBMS_OUTPUT.PUT_LINE('====Patient info Summary====');

    end presc_pro;
    
exec presc_pro(7);



--Procedure to check if patient has insurance

   create or replace
procedure has_insur_pro
        (
            p_id in int,
            p_return out insurances%Rowtype
           
           
        )
    is
     hasIn EXCEPTION;
   
    begin

      select *
      into p_return
      from insurances
      where PatientId = p_id;
      
      if p_return.PatientId = p_id then
      
    
      raise hasIn;
      end if;


EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No Insurance Information Found.');
  WHEN hasIn THEN 
    dbms_output.put_line('Patient with Id#: ' || p_id || ' has insurance.');
   
end has_insur_pro;



    
    declare
    p_return insurances%rowtype;
        p_id INT := 4;
        
        
    begin
    DBMS_OUTPUT.PUT_LINE('Patient Insurance info:');
    has_insur_pro(p_id,P_return);
    DBMS_OUTPUT.PUT_LINE('Insurance Name:' || p_return.name);   
    DBMS_OUTPUT.PUT_LINE('Insurance ID#:' || p_return.insid);
    
    end;
    