insert into patients(patientid, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(id_seq.nextval ,'Eltoukhy', 'Mahmoud', 35 , 987654321 , 'Toronto', 647647647);
 
insert into patients(patientid, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(id_seq.nextval ,'Mik', 'Matthew', 30 , 123456798 , 'Sweden', 01010101);    
   
insert into patients(patientid, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(id_seq.nextval ,'Na', 'Jason', 16 , 456213789 , 'Ottawa', 613613613);  
   
insert into patients(patientid, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(id_seq.nextval ,'Singh', 'Karanjot', 25 , 456789123 , 'Montreal', 514514514);



insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(id_seq.nextval, 5 , 1, 'Toronto' , 'University st', 456456456, 546456456);
 
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(id_seq.nextval, 6 , 2, 'Sweden' , 'Ikea st', 101010, 101010101);
 
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(id_seq.nextval, 7 , 3, 'Ottawa' , 'Parliament Hill', 613613613, 6136136133);



insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(id_seq.nextval, 'Smith', 'Will', 77477 , 5);
 
insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(id_seq.nextval, 'De niro', 'Robert', 98759 , 6);
 
insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(id_seq.nextval, 'Mamoa', 'Jason', 65326 , 7);  


 
insert into pharmacists(phid, name, licensenum)
  values(id_seq.nextval, 'Tag Simon' , 631398);
insert into pharmacists(phid, name, licensenum)
  values(id_seq.nextval, 'Susan Eto' ,635563);
insert into pharmacists(phid, name, licensenum)
  values(id_seq.nextval, 'Matthew Rice' , 624864);

   
insert into Insurances(insid, patientid, name)
  values(rxid_seq.nextval, 1 ,'Sun Life');
insert into Insurances(insid, patientid, name)
  values(rxid_seq.nextval, 2 ,'Express Script');
insert into Insurances(insid, patientid, name)
  values(rxid_seq.nextval, 3 ,'Green Shield');


   
insert into medications( DIN, name, strength, quantity )
  values(301171598, 'Pantoprazole' , 40 , 1000);
 
insert into medications( DIN, name, strength, quantity )
  values(30121688, 'Metformin' , 500 , 9530);
 
insert into medications( DIN, name, strength, quantity )
  values(359985423, 'Sertraline' , 20 , 320);


