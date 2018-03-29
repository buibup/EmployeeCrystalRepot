create table EmployeeInformation   
(  
EmpId int identity(1, 1) Primary Key,  
EmpName varchar(20),  
EmpContact nchar(15),  
EmpDeparatment varchar(30),  
EmpCity varchar(30)  
) 


Create procedure sp_EmployeeInformation  
As  
Begin  
Set nocount on;  
Select EmpName,EmpContact,EmpDeparatment,EmpCity   
From EmployeeInformation  
End  


insert into EmployeeInformation values('Jonny','9988774445','IT','Delhi')  
insert into EmployeeInformation values('Karan','9987534445','EC','Pune')  
insert into EmployeeInformation values('Mitali','9988774741','HR','Kolkata')  
insert into EmployeeInformation values('Rohan','8888774445','IT','Jaipur')  
insert into EmployeeInformation values('Sapnil','9988714785','HR','Gurgaon')  
insert into EmployeeInformation values('Sonika','9989994445','ELC','Bangalore')  
insert into EmployeeInformation values('Punit','9888774445','ACC','Delhi')  
insert into EmployeeInformation values('Ketan','9988774445','IT','Chennai')  
insert into EmployeeInformation values('Jennit','9986541235','EC','Delhi')  
insert into EmployeeInformation values('Kavita','7845129635','ELC','Madurai')  