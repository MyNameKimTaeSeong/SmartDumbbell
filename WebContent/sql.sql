CREATE TABLE MEMBER (
id varchar(30) PRIMARY KEY,
name varchar(30),
email varchar(30),
password varchar(30),
tel varchar(30)
);

create table counting(

email varchar(30),
position varchar2(30),
goodcount varchar2(30),
kcal varchar2(30),
accuracy varchar2(50),
writedate varchar2(50)

);

CREATE TABLE BBS(
id number PRIMARY KEY,
title varchar(150),
content varchar(2048),
writer varchar(30),
boardDate date,
boardAvailable number
);         

CREATE TABLE dailytotal(
email varchar(300),
Ddate varchar(300),
b0counting number default 0,
b1counting number default 0,
b2counting number default 0,
b3counting number default 0,
b4counting number default 0,
totalcalories number default 0, 
totalaccuracy number default 0,
cnt number default 0,
arate number default 0
);        

drop table dailytotal

create table mygoal(
email varchar(300) PRIMARY KEY,
goal varchar(300) default 150
)


select * from mygoal


drop table mygoal

CREATE SEQUENCE MEMBER_NUM
START WITH 1
INCREMENT BY 1

CREATE SEQUENCE BOARD_NUM
START WITH 1
INCREMENT BY 1


SELECT *FROM MEMBER;
SELECT *FROM BBS;
SELECT *FROM COUNTING;
SELECT *FROM DAILYTOTAL;
SELECT *FROM MYGOAL;


DELETE FROM COUNTING;
DELETE FROM DAILYTOTAL;
DELETE FROM MEMBER;
DELETE FROM BBS;
DROP TABLE DAILYTOTAL


INSERT INTO DAILYTOTAL VALUES('test1@naver.com', '2017-08-28', 20, 30, 40, 50, 60, 121.2, 77.32, 8);
INSERT INTO DAILYTOTAL VALUES('test2@naver.com', '2017-08-29', 20, 30, 40, 50, 60, 122.2, 72.32, 8);
INSERT INTO DAILYTOTAL VALUES('test3@naver.com', '2017-08-30', 20, 30, 40, 50, 60, 123.2, 71.32, 8);
INSERT INTO DAILYTOTAL VALUES('test4@naver.com', '2017-08-31', 20, 30, 40, 50, 60, 124.2, 70.32, 8);
INSERT INTO DAILYTOTAL VALUES('test@naver.com', '2017-09-01', 20, 30, 40, 50, 60, 127.2, 77.32, 8);
INSERT INTO DAILYTOTAL VALUES('test@naver.com', '2017-09-03', 20, 30, 40, 50, 60, 127.2, 77.32, 8);
INSERT INTO DAILYTOTAL VALUES('test@naver.com', '2017-09-07', 20, 30, 40, 50, 60, 127.2, 77.32, 8);
INSERT INTO DAILYTOTAL VALUES('test@naver.com', '2017-09-11', 20, 30, 40, 50, 60, 127.2, 77.32, 8);

INSERT INTO member VALUES(member_num.nextval, '정승현','test2@naver.com','1234','1234');
INSERT INTO member VALUES(member_num.nextval, '모장환','test3@naver.com','1234','1234');

select  * from dailytotal order by totalcalories desc
select * from dailytotal
select * from member
MEMBER

select member.name, dailytotal.totalcalories from member, dailytotal where member.email =dailytotal.email order by totalcalories desc



insert into dailytotal(email, b0counting ,totalcalories, totalaccuracy, cnt, ddate, arate) values('tmdgus7923',12,12,12,1,'12',159)




select * from member;
select * from dailytotal;
select * from mygoal;
select * from counting;


update dailytotal set totalcalories = 3.2 where email = 'test1@naver.com'
update dailytotal set totalcalories = 7.2 where email = 'test2@naver.com'

insert into counting values('test2@naver.com', 'b2', 25, 5, 75, '2017-08-28')



delete from MEMBER where name = '이재학'










delete from COUNTINg
delete from member
delete from dailytotal
delete from mygoal