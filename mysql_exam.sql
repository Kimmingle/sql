use kh;

show databases;

use mysql;

select * from member;
drop table member;
create database test_sql;

use test_sql;

create table member(member_id varchar(50) primary key, member_pwd varchar(50), member_name varchar(50), grade int, area_code varchar(50));

insert into member values( 'hong01', 'pass01', '홍길동', 10, '02' );
insert into member values( 'leess99', 'pass02', '이순신', 10, '032' );
insert into member values( 'ss50000', 'pass03', '신사임당', 30, '031' );
insert into member values( 'iu93', 'pass04', '아이유', 30, '02' );
insert into member values( 'pcs1234', 'pass05', '박철수', 20, '031' );
insert into member values( 'you_js', 'pass06', '유재석', 10, '02' );
insert into member values( 'kyh9876', 'pass07', '김영희', 30, '031' );
select * from member;
drop table member;

create table grade( grade_code int primary key, grade_name varchar(50) );
create table grade( grade_code int primary key, grade_name varchar(50) ,
foreign key(grade_code) REFERENCES member (grade)
);

insert into grade values( 10, '일반회원' );
insert into grade values( 20, '우수회원' );
insert into grade values( 30, '특별회원' );


select * from grade;
drop table grade;

create table tb_area(  
area_code varchar(10)primary key, area_name varchar(50) );

insert into tb_area values( '02', '서울' );
insert into tb_area values( '031', '경기' );
insert into tb_area values( '032', '인천' );
select * from tb_area;
drop table tb_area;


select * from member order by grade asc;
SELECT area_name , member_id , member_name , grade_name  from member;

-- 김영희 회원과 같은 지역에 사는 회원들의 지역명, 아이디, 이름 , 등급명을 오름차순으로 조회
SELECT area_name , member_id , member_name , grade_name 
FROM member
JOIN grade ON(grade = grade_code)	-- 테이블이름 명시하기  member.grade = 
JOIN tb_area ON (tb_area.area_code = member.area_code)  -- using (area_code)
WHERE area_code = (
	SELECT area_code FROM member
WHERE member_name = '김영희')  -- 괄호 안에 있기 때문에 이름은 익식하지 못함
ORDER BY 이름 DESC;	-- 오름차운 이여야함



1-2
컬럼이름 불일치 
=이 아니라 like, %1234% 검색되는 결과가 없음

1-3
row num은 없는 컬럼명임
, area name 두번째줄에 추가
in ('서울', '경기') oder by~
괄호 바깥에 있으므로 실제로 정렬되지 못한다 

