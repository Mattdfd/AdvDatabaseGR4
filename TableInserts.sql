insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(id_seq.nextval, 5 , 1, 'Toronto' , 'University st', 456456456, 546456456);
 
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(id_seq.nextval, 6 , 2, 'Sweden' , 'Ikea st', 101010, 101010101);
 
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(id_seq.nextval, 7 , 3, 'Ottawa' , 'Parliament Hill', 613613613, 6136136133);


insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(id_seq.nextval, 'Smith', 'Will', 77477 , 1);
 
insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(id_seq.nextval, 'De niro', 'Robert', 98759 , 2);
 
insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(id_seq.nextval, 'Mamoa', 'Jason', 65326 , 3);   

insert into patients(patientid,DrID, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(id_seq.nextval,4 ,'Eltoukhy', 'Mahmoud', 35 , 987654321 , 'Toronto', 647647647);
 
insert into patients(patientid,DrID, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(id_seq.nextval,4 ,'Mik', 'Matthew', 30 , 123456798 , 'Sweden', 01010101);    
   
insert into patients(patientid,DrID, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(id_seq.nextval,5 ,'Na', 'Jason', 16 , 456213789 , 'Ottawa', 613613613);  
insert into patients(patientid,DrID, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(id_seq.nextval,6 ,'Singh', 'Karanjot', 25 , 456789123 , 'Montreal', 514514514);
 
insert into pharmacists(phid, name, licensenum)
  values(id_seq.nextval, 'Tag Simon' , 631398);
insert into pharmacists(phid, name, licensenum)
  values(id_seq.nextval, 'Susan Eto' ,635563);
insert into pharmacists(phid, name, licensenum)
  values(id_seq.nextval, 'Matthew Rice' , 624864);

   
insert into insurances(insid, patientid, name)
  values(rxid_seq.nextval, 7 ,'Sun Life');
insert into insurances(insid, patientid, name)
  values(rxid_seq.nextval, 8 ,'Express Script');
insert into insurances(insid, patientid, name)
  values(rxid_seq.nextval, 9 ,'Green Shield');



   
insert into medications( DIN, name, strength, quantity,PatientId,PHID )
  values(301171598, 'Pantoprazole' , 40 , 1000,7,11);
 
insert into medications( DIN, name, strength, quantity, PatientId,PHID )
  values(30121688, 'Metformin' , 500 , 9530,7,12);
 
insert into medications( DIN, name, strength, quantity,PatientId,PHID )
  values(359985423, 'Sertraline' , 20 , 320,8,13);


------- updated inserts--------------------------------

insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(clinicsid_seq.nextval, 1 , 1, 'Toronto' , 'University st', 456456456, 546456456);
 
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(clinicsid_seq.nextval, 2 , 2, 'Sweden' , 'Ikea st', 101010, 101010101);
 
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(clinicsid_seq.nextval, 3 , 3, 'Ottawa' , 'Parliament Hill', 613613613, 6136136133);
  
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(clinicsid_seq.nextval, 4 , 4, 'Kingston' , '637 Morrow Circle', 5068576011, 6086052130);
 
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(clinicsid_seq.nextval, 5 , 5, 'Alexandria' , '69533 Beilfuss Terrace', 2569201983, 7972719284);
 
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(clinicsid_seq.nextval, 6 , 6, 'Smith Falls' , '9 Gerald Center', 9014497660, 6474668994);
 
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(clinicsid_seq.nextval, 7 , 7, 'Huntsville' , '8 Westridge Plaza', 5496433134, 5808441111);
  
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(clinicsid_seq.nextval, 8 , 8, 'Bosaso' , '82923 Logan Crossing', 3426959457, 2561034269);  
 
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(clinicsid_seq.nextval, 8 , 8, 'Victoria' , '85 Armistice Park', 4023588748, 9349085294); 
 
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(clinicsid_seq.nextval, 9 , 9, 'Vancouver' , '28979 Susan Trail', 6632194765, 	5596615188); 
 
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(clinicsid_seq.nextval, 10 , 10, 'Banff' , '6726 Pankratz Place', 7168357696,1755599213);
 
 
 
insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(doctorsid_seq.nextval, 'Smith', 'Will', 77477 , 1);
 
insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(doctorsid_seq.nextval, 'De niro', 'Robert', 98759 , 2);
 
insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(doctorsid_seq.nextval, 'Mamoa', 'Jason', 65326 , 3); 
 
insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(doctorsid_seq.nextval, 'Jeniffer', 'Gewer', 72381 , 4); 
  
insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(doctorsid_seq.nextval, 'Mac', 'Bonnette', 55907 , 5); 
  
insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(doctorsid_seq.nextval, 'Jennine', 'Larrett', 80967 , 6); 
  
insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(doctorsid_seq.nextval, 'Tracie', 'Scranny', 65922 , 7); 
  
insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(doctorsid_seq.nextval, 'Mattias', 'Grisard', 69493 , 8); 
  
insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(doctorsid_seq.nextval, 'Sherrie', 'Longstreeth', 88265 , 9); 
  
insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(doctorsid_seq.nextval, 'Alana', 'Scad',59583 ,10); 
 
 
 
 
insert into patients(patientid,DrID, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(PATIENTSID_SEQ.nextval,1 ,'Eltoukhy', 'Mahmoud', 35 , 987654321 , 'Toronto', 647647647);
 
insert into patients(patientid,DrID, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(PATIENTSID_SEQ.nextval,2 ,'Mik', 'Matthew', 30 , 123456798 , 'Sweden', 01010101);    
   
insert into patients(patientid,DrID, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(PATIENTSID_SEQ.nextval,3 ,'Na', 'Jason', 16 , 456213789 , 'Ottawa', 613613613);  
   
insert into patients(patientid,DrID, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(PATIENTSID_SEQ.nextval,4 ,'Singh', 'Karanjot', 25 , 456789123 , 'Montreal', 514514514);
 
insert into patients(patientid,DrID, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(PATIENTSID_SEQ.nextval,5 ,'Mullally', 'Thomas' , 68 , 3192213780,'Toronto' , 3582304726);
  
insert into patients(patientid,DrID, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(PATIENTSID_SEQ.nextval,6 ,'ODoherty', 'Betti' ,78 ,	3754380292, 'Krasnogorsk',8747456530);
  
insert into patients(patientid,DrID, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(PATIENTSID_SEQ.nextval,7 ,'Eastman' , 'Alexis' , 21 , 4886980036, 'Luhe',6074696236);
  
insert into patients(patientid,DrID, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(PATIENTSID_SEQ.nextval,8 ,'Blint' , 'Theodor',4 , 2352728248, 'Santiago',4067846880);
  
insert into patients(patientid,DrID, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(PATIENTSID_SEQ.nextval,9 ,'Dun' , 'Clemence' , 80 , 7098146640, ' Orleans',1433813127);
  
insert into patients(patientid,DrID, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(PATIENTSID_SEQ.nextval,10 ,'Fairbourn' , 'Nannette' ,45 , 5882276863,'GlennGarry',6049995315);  
 
insert into pharmacists(phid, name, licensenum)
  values(PHARMACISTSID_SEQ.nextval, 'Tag Simon' , 631398);
insert into pharmacists(phid, name, licensenum)
  values(PHARMACISTSID_SEQ.nextval, 'Susan Eto' ,635563);
insert into pharmacists(phid, name, licensenum)
  values(PHARMACISTSID_SEQ.nextval, 'Matthew Rice' , 624864);
 
insert into pharmacists(phid, name, licensenum)
  values(PHARMACISTSID_SEQ.nextval, 'Violante MacGille' ,786497);
  
insert into pharmacists(phid, name, licensenum)
  values(PHARMACISTSID_SEQ.nextval, 'Rosene Adderley' ,651761);
  
insert into pharmacists(phid, name, licensenum)
  values(PHARMACISTSID_SEQ.nextval, 'Gilligan Tomsu', 55827);
  
insert into pharmacists(phid, name, licensenum)
  values(PHARMACISTSID_SEQ.nextval, 'Rasia Ciotto',83290);
  
insert into pharmacists(phid, name, licensenum)
  values(PHARMACISTSID_SEQ.nextval, 'Zachary Capehorn' ,63792);
  
insert into pharmacists(phid, name, licensenum)
  values(PHARMACISTSID_SEQ.nextval, 'Jaimie Gotcliff' ,62017);
  
insert into pharmacists(phid, name, licensenum)
  values(PHARMACISTSID_SEQ.nextval, 'Cacilia Lassells' ,28957);
 
 
insert into insurances(insid, patientid, name)
  values(INSID_SEQ.nextval, 1 ,'Sun Life');
insert into insurances(insid, patientid, name)
  values(INSID_SEQ.nextval, 2 ,'Express Script');
insert into insurances(insid, patientid, name)
  values(INSID_SEQ.nextval, 3 ,'Green Shield');
insert into insurances(insid, patientid, name)
  values(INSID_SEQ.nextval, 4 ,'ClaimSecure');
insert into insurances(insid, patientid, name)
  values(INSID_SEQ.nextval, 5 ,'BlueCross');
 
 
 
insert into medications( DIN, name, strength, quantity,PatientId,PHID )
  values(301171598, 'Pantoprazole' , 40 , 1000,1 ,1);
 
insert into medications( DIN, name, strength, quantity, PatientId,PHID )
  values(30121688, 'Metformin' , 500 , 9530, 2, 2);
 
insert into medications( DIN, name, strength, quantity,PatientId,PHID )
  values(359985423, 'Sertraline' , 20 , 320,3,3);
 
insert into medications( DIN, name, strength, quantity,PatientId,PHID )
  values(4796079569, 'Tadalafil' , 20 , 32, 4,11);
  
insert into medications( DIN, name, strength, quantity,PatientId,PHID )
  values(2649881787, 'Esomeprazole' , 40 , 1200 ,5,5);
  
insert into medications( DIN, name, strength, quantity,PatientId,PHID )
  values(6823365879, 'ACETAMINOPHEN' , 325 , 10500,6,6);
  
insert into medications( DIN, name, strength, quantity,PatientId,PHID )
  values(9822185894, 'salicylic acid' , 81 , 12000 ,7 ,7);
  
insert into medications( DIN, name, strength, quantity,PatientId,PHID )
  values(1805810966, 'lamotrigine' , 500 , 300, 8,8);
  
insert into medications( DIN, name, strength, quantity,PatientId,PHID )
  values(7047017893, 'Atenolol' , 50 , 410,9,9);
  
insert into medications( DIN, name, strength, quantity,PatientId,PHID )
  values(9692108063, 'Metoprolol Tartrate' , 25 , 320 ,10 ,10);  
