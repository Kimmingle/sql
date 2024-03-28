
--emp
create table emp(userid varchar(8) not null, name varchar(50)not null , password varchar(20)not null, position varchar(4) not null, workplace  varchar(20) not null, address varchar(50) , birth timestamp, regday timestamp, wedday timestamp );
select * from emp;

alter table emp add constraints key1 primary key (userid);
alter table emp add constraints key1 primary key (userid);

--sal
create table sal( userid varchar(8) not null primary key, salary int not null, fromdate timestamp, todate timestamp);
foreign key(userid) references emp (userid)
drop table emp;

--member
create table member( userid varchar(12) not null primary key, password varchar(12) not null, name varchar(20) not null, address varchar(100), tel varchar(20)not null, regdate timestamp default sysdata );
drop table member;


--book
create table book( bookid int not null primary key, bookkind varchar(50) not null, booktitle varchar(50) not null, bookprice int not null, bookcount int not null, author varchar(50), pubcom varchar(50), pubdate timestamp);
create sequence bseq2 increment by 1 start with 1 minvalue 1 maxvalue 9999 nocycle;
drop table book;
select * from book;


--sales
create table sales( sno int not null primary key, bno int not null, id varchar(12) not null, amount int DEFAULT 1 not null , money int, salesday timestamp );
create sequence sseq increment by 1 start with 1 minvalue 1 maxvalue 9999 nocycle;
select * from sales;
drop table sales;

--시퀀스 제대로 안나오면 
drop sequence besq;
drop sequence sseq;
--하고 테이블도 날리기

insert into emp values('A1001',	'강범준', 'a1234', 'A','강남구', '신사동 912', '1979-12-25', '2003-02-17','');
insert into emp values('A1002', '권민지', 'a3421', 'B', '강동구', '강일동 128', '1987-01-08', '2010-02-28', '2015-02-28');
insert into emp values('B1003', '김동연', 'b1111', 'B', '강북구', '수유동 1004', '1984-09-23', '2007-11-15', '2013-11-15');
insert into emp values('B1004', '김민식', 'c456', 'D', '강서구', '화곡1동 37', '2000-08-04', '2021-09-26','');
insert into emp values('C1005', '김민아', 'z675', 'C', '관악구', '난곡동 67', '1994-11-13', '2018-01-05','');
insert into emp values('C1006', '김응원', 'q789', 'A	', '광진구', '능동 13', '1980-08-19', '2003-10-11', '2009-10-11');
insert into emp values('D1007', '김필규', 'g478', 'B', '구로구', '고척1동 178', '1983-07-07', '2006-08-30', '2012-08-30');
insert into emp values('D1008', '박동빈', 'd666', 'C', '금천구', '독산1동 75', '1996-09-04', '2019-10-27','');
insert into emp values('E1009', '박범수', 'e964', 'A', '노원구', '상계동 777', '1981-03-05', '2004-04-27','');
insert into emp values('E1010', '박은성', 'h369', 'D	', '도봉구', '쌍문3동 888', '2001-04-27', '2021-06-19','');

insert into sal values('A1001', '4000000', '2022-05-01', '2022-05-31');
insert into sal values('A1002', '3600000', '2022-05-01', '2022-05-31');
insert into sal values('B1003', '3500000', '2022-05-01', '2022-05-31');
insert into sal values('B1004', '3350000', '2022-05-01', '2022-05-31');
insert into sal values('C1005', '3450000', '2022-05-01', '2022-05-31');
insert into sal values('C1006', '3750000', '2022-05-01', '2022-05-31');
insert into sal values('D1007', '3550000', '2022-05-01', '2022-05-31');
insert into sal values('D1008', '3400000', '2022-05-01', '2022-05-31');
insert into sal values('E1009', '3700000', '2022-05-01', '2022-05-31');
insert into sal values('E1010', '3150000', '2022-05-01', '2022-05-31');
select * from sal;

insert into member values('E1010', '3150000', '2022-05-01', '2022-05-31');
insert into member values('bgh', 'a1234', '배곤희', '신사동 912', '010-1111-2222', '2023-09-13');
insert into member values('yjh', 'a3421', '유정환', '강일동 128', '02-2222-3333', '2023-09-13');
insert into member values('lmk', 'b1111', '이민규', '수유동 1004', '010-3333-4444', '2023-09-14');
insert into member values('lsh', 'c456', '이성하', '화곡1동 37', '010-4444-5555', '2023-09-15');
insert into member values('lyj', 'z675', '이연정', '난곡동 67', '02-4444-2222', '2023-09-11');
insert into member values('lyl', 'q789', '이예린', '능동 13', '010-5555-6666', '2023-09-15');
insert into member values('lws', 'g478', '이원석', '고척1동 178', '010-6666-7777', '2023-09-13');
insert into member values('ljh', 'd666', '이정희', '독산1동 75', '010-7777-8888', '2023-09-14');
insert into member values('ljw', 'e964', '이종우', '상계동 777', '02-5555-2222', '2023-09-05');
insert into member values('jib', 'h369', '장인범', '쌍문3동 888', '010-8888-9999', '2023-09-16');

select * from member;

insert into book values(bseq2.nextval, 'IT', '이것이 자바다', '30000', '10', '신용권', '한빛미디어', '2021-08-20');
insert into book values(bseq2.nextval, 'IT', '자바웹개발워크북', '31500', '19', '구멍가게코딩단', '남가람북스', '2022-08-04');
insert into book values(bseq2.nextval, 'NV', '하얼빈', '14400', '15', '김훈	', '문학동네', '2022-08-03');
insert into book values(bseq2.nextval, 'NV', '불편한편의점', '12600', '1', '김호연', '나무옆의자', '2022-08-10');
insert into book values(bseq2.nextval, 'DV', '역행자', '15750', '8', '자청', '웅진출판', '2022-05-30');
insert into book values(bseq2.nextval, 'DV', '자소서바이블', '18000', '15', '이형', '엔알디', '2022-08-25');
insert into book values(bseq2.nextval, 'HC', '벌거벗은한국사', '17500', '10', 'tvn', '프런트페이지', '2022-08-22');
insert into book values(bseq2.nextval, 'HC', '난중일기', '14000', '30', '이순신', '스타북스', '2022-07-27');
insert into book values(bseq2.nextval, 'TC', '진짜쓰는실무엑셀', '20000', '10', '전진권', '제이펍', '2022-02-15');
insert into book values(bseq2.nextval, 'TC', '빅데이터인공지능', '25000', '15', '박해선', '한빛미디어', '2020-12-21');
select * from book;

sales
insert into sales(sno, bno, id, amount, salesday) values(sseq.nextval, 1, 'bgn', 1, sysdate);
--모든 항목의 값을 적용하되 구매금액은 현재 항목의 값
--현재항목의 값이 입력되어있을 경우만 계산이 가능 
--일단 null이 되야함
insert into sales values (sseq.nextval, 1, 'lhy', 1, null, sysdate );
insert into sales values (sseq.nextval, 2, 'ykh', 1, null, sysdate );
insert into sales values (sseq.nextval, 1, 'jjs', 2, null, sysdate );
insert into sales values (sseq.nextval, 9, 'lhy', 1, null, sysdate );
insert into sales values (sseq.nextval, 2, 'cmj', 5, null, sysdate );
insert into sales values (sseq.nextval, 2, 'jjs', 3, null, sysdate );
insert into sales values (sseq.nextval, 3, 'yjh', 2, null, sysdate );
insert into sales values (sseq.nextval, 5, 'hsy', 4, null, sysdate );
insert into sales values (sseq.nextval, 4, 'nsy', 8, null, sysdate );
insert into sales values (sseq.nextval, 1, 'jbj', 3, null, sysdate );
insert into sales values (sseq.nextval, 2, 'kyj', 4, null, sysdate );
insert into sales values (sseq.nextval, 7, 'lhn', 1, null, sysdate );
insert into sales values (sseq.nextval, 8, 'hth', 2, null, sysdate );
insert into sales values (sseq.nextval, 10, 'cmj', 5, null, sysdate );
insert into sales values (sseq.nextval, 1, 'lhy', 3, null, sysdate );
insert into sales values (sseq.nextval, 2, 'cmj', 2, null, sysdate );
insert into sales values (sseq.nextval, 2, 'lhy', 1, null, sysdate );
insert into sales values (sseq.nextval, 1, 'ykh', 3, null, sysdate );
select * from sales;

--서브쿼리 활용 
select bookprice from book where bookid in (select bno from sales);
--결과적으로 밑에 문장을 넣는게 맞음
select a.bookprice from book a inner join sales b on a.bookid=b.bno;


--그래서 넣었는데 오류 ->
update sales set money=(select a.bookprice from book a inner join sales b on a.bookid=b.bno)*amount where sales.bno=book.bookid;
                                                                                    sales.amount*book.bookprice
--이렇게 넣어줄것
update sales set money=(select bookprice from book where bookid=sales.bno)*amount;

update sales set bno = 3 where ;




insert into member values('kkt', 'a1004', '김기태', '가산동 12', '010-1004-1000', '2023-09-12')*amount;
select * from member;

insert into book values(bseq2.nextval, 'IT', '스프링 프레임워크', '38000', '8', '김기태', '정복사', '2022-9-10');

insert into sales values (sseq.nextval, 1, 'kkt', 2, null, sysdate );
update sales set money=(select bookprice from book where bookid=sales.bno)*amount;

insert into member values('jib', 'h369', '장인범', '쌍문3동 888', '010-8888-9999', '2023-09-16');
alter table member add pt int DEFAULT 0;

ALTER TABLE member DROP COLUMN pt;

commit;