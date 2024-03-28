create table member(no int not null, id varchar(20) primary key, pw varchar(300), name varchar(100), birth timestamp, email varchar(300));

create sequence c##test123.mem_seq increment by 1 start with 1 minvalue 1 maxvalue 9999 nocycle; 


--데이터 추가
insert into member values (mem_seq.nextval, 'kim', '1234', '김민아' ,'2001-06-12', 't5328@naver.com');
insert into member values (mem_seq.nextval, 'park', '1233', '박동수', '2002-08-12', '45128@naver.com');
insert into member values (mem_seq.nextval, 'lee', '8854','이연정' ,'1999-11-12', 'e328@naver.com');
insert into member values (mem_seq.nextval, 'joo', '0034','조대신', '1980-07-12', '8458@naver.com');
insert into member values (mem_seq.nextval, 'yu', '6684', '유정환', '2001-12-12', 'YY328@naver.com');
insert into member values (mem_seq.nextval, 'kim1', '0104', '김민희', '2005-01-02', 'kim01@naver.com');
insert into member values (mem_seq.nextval, 'bae', '0909', '배곤희', '1999-01-02', 'bae@naver.com');
insert into member values (mem_seq.nextval, 'dae', '0909', '이곤희','1999-01-02', 'bae@naver.com');





--데이터 검색
select * from member;

--DDL은 자동커밋 됨(그래도 해주기)
commit;

select id, name, substr(name, 1, 1) from member;
--컬럼명이 길거나 수식/함수를 적용하여 컬럼을 구성할 경우 컬럼에 대한 alias(별칭)을 붙일 수 있다. 
--컬럼이름 surname으로 지정
select id, name, substr(name, 1, 1) as surname from member;

--테이블의 틀은 남아있고 데이터만 지워짐
DELETE from member;

alter table member add regdate TIMESTAMP default sysdate; 

--구조보는 명령
desc member;

create table temp2(no int, name varchar(200), point int);

insert into temp2 values (1, '김', 90);
insert into temp2 values (2, '박', 80);
insert into temp2 values (2, '최', 85);
insert into temp2(name, point) values ('이', 75);

select * from temp2;

-- no가 null이 들어있는 상태에서 기본키로 만드려면 not null, 중복 없어야함
--테이블 구조 변경은 alter
alter table temp2 add constraints key1 primary key (no);

delete temp2 where name='이';
commit;

create table emp1(no int, name varchar(100), pcode int, constraints key2 primary key (no));

create table pos(pcode int primary key, pname varchar(100));
insert into pos values(1, '이사');
insert into pos values(2, '부장');
insert into pos values(3, '과장');
insert into pos values(4, '사원');
insert into pos values(5, '인턴');

select * from emp;
select * from pos;

--참조 무결성 원칙에 어긋나서 외래키 만들수 없다
alter table emp add constraints fkey foreign key (pcode) references pos(pcode); 

select * from ALL_CONSTRAINTS where OWNER='c##TRST123';
select * from ALL_CONSTRAINTS where TABLE_NAME='EMP';

alter table emp drop constraint key2;

--연쇄삭제
drop table pos cascade constraints;

desc emp;

select * from ALL_CONSTRAINTS where TABLE_NAME='EMP';

create view view_pos as select * from emp;
create view view_pos as select * from emp where no >=3;
select * from emp;
select * from view_pos;

drop view view_pos;
--alter view view_pos as select * from emp where no >= 2 or name like;

create sequence emp_seq inserment by 1 start with 1 minvalue 1 maxvalue 999 nocycle;

--내부조인
select a.no, a.name, b.pname
from emp a inner join pos b on a.pcode = b.pcode;

--외부조인left
select a.no, a.name, b.pname
from emp a left join pos b on a.pcode = b.pcode;

--외부조인right
select a.no, a.name, b.pname
from emp a right join pos b on a.pcode = b.pcode;

--연관쿼리
select a.no, a.name, b.pname
from emp a,

select * from pos;


-- order by : 출력되는 값을 정렬할때