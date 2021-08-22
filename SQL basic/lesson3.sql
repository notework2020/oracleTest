

-- создание таблицы

CREATE TABLE furm (

  article VARCHAR2(15) primary key,
  name VARCHAR2(50),
  partcount NUMBER,
  part NUMBER

);


select * from furm;

---------------------------------------------------------

create table basket (

article varchar2 (15),
name varchar2 (50),
itemname varchar2 (50),
itemcount number,
dt date
);

-----------------------------------------------


alter table add( имя поля тип поля);
alter table drop имя поля;

-----------------------------------------------

create table phonesnum(        --- создание таблицы

numphone varchar2 (50) PRIMARY KEY,
firstname varchar2 (50),
lastname varchar2 (50)
);

alter table phonesnum add(   -- добавление новых колонок

birthday date,
chcount number,
sex varchar2 (10)

);

drop table phonesnum; -- удаление таблицы





