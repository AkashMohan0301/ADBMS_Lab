use student5;
select * from details;
select sum(physics) from details;
select Department from details where Department like '%A';
select name from details where name like '%A';
alter table details drop totalmarks;
alter table details add total int;
update details set total="255" where id=1;
update details set total="251" where id=2;
update details set total="243" where id=3;
update details set total="212" where id=4;
update details set total="207" where id=5;
update details set total="264" where id=6;
update details set total="147" where id=7;
update details set total="215" where id=8;
update details set total="264" where id=9;
update details set total="147" where id=10;
alter table details add age int;
update details set age="24" where id=1;
insert into details values(1,'akshay','pottamal',97,56,88,'MCA',332,24);
update details set age="22" where id=2;
update details set age="23" where id=3;
update details set age="25" where id=4;
update details set age="24" where id=5;
update details set age="21" where id=6;
update details set age="25" where id=7;
update details set age="23" where id=8;
update details set age="24" where id=9;
update details set age="25" where id=10;
alter table details add constraint test check(age>=21);
create view stud_details as select id,name from details;
select * from stud_details;
delete from details where age=22;
commit;
select * from details;
rollback;
select max(total) from details;
select distinct Department from details;
select Department from details union select Department from department3;
alter table details add constraint test1 check(total>100);
create view topper as select name from details where age=21;
select * from topper;
alter table details add constraint  dept_id_pk primary key(id);
create table department3(dept_id int, Department varchar(20), loc_id int);
insert into department3 values(11, 'MCA' , 22550);
insert into department3 values(15, 'MECH' , 25880);
insert into department3 values(21, 'CIVIL' , 24520);
insert into department3 values(31, 'BTECH' , 20545);
insert into department3 values(71, 'EC' , 204225);
select * from department3;
alter table department3 add constraint  dept_id_pk3 primary key(dept_id);
describe department3