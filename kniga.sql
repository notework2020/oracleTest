
-- АДМИН

SELECT USERNAME,ACCOUNT_STATUS FROM dba_users WHERE ACCOUNT_STATUS LIKE '%EXPIRED%';

ALTER USER HR ACCOUNT UNLOCK;


ALTER USER orauser IDENTIFIED BY newpass;
-------------------------------------------------------
-- ИСТЕК СРОК ПАРОЛЯ

select * from dba_profiles where resource_name = 'PASSWORD_LIFE_TIME' and profile = 'DEFAULT';

ALTER PROFILE DEFAULT LIMIT PASSWORD_LIFE_TIME UNLIMITED;


ALTER USER HR IDENTIFIED BY HR;
------------------------------------------------------
select   DEPTNO,
         DNAME,
         LOC  
from     dept;

select EMPNO ,
ENAME ,
JOB ,
MGR ,
HIREDATE ,
SAL ,
COMM ,
DEPTNO  from emp;


select EMPNO ,
ENAME ,
JOB ,
MGR ,
HIREDATE ,
SAL ,
COMM ,
DEPTNO  from emp
where deptno = 10
--or comm is not null
or sal <= 2000 and deptno = 20;

----------------------------------------------------------

select EMPNO ,
ENAME ,
JOB ,
MGR ,
HIREDATE ,
SAL ,
COMM ,
DEPTNO  from emp
where (deptno = 10
       or comm is not null
       or sal <= 2000
       )
and deptno = 20;

----------------------------------------------------

select 
ENAME ,
deptno,
sal

  from emp

----------------------------------------------------


select sal as  salary, comm as  commission
from emp;


----------------------------------------------------

select sal as salary, comm as commission
from emp 
where salary < 5000; -- ошибка

-- Решение

select * from 
             (
             select 
             sal as salary, 
             comm as commission 
             from emp )x        -- x -псевдоним
where salary <5000;

select * from salespeople

------------------------------------------------------------

INSERT INTO salespeople
(snum,sname,city,comm)
VALUES
(1001,'Peel','London',0.12);

--------------------------------------------------------------------------------------

-- Конкатенация значений столбцов

select ename||' WORKS AS A ' || job as msg
from emp
where deptno = 10;

--------------------------------------------------------------------------------------

--Использование условной логики в выражении SELECT

select ename, sal,
        case when sal <= 2000 then 'UNDERPAID'
            when sal >= 4000 then 'OVERPAID'
            else 'OK'
            end as status
from emp;            

-----------------------------------------------------------

-- Ограничение числа возвращаемых строк стр 40

select * from emp
where ROWNUM <=5

--------------------------------------------------------

 -- Возвращение n случайных записей таблицы

select * 
    from(
    select ename, job
    from emp
    order by dbms_random.value()
        )
    where rownum <= 5;    

-----------------------------------------------------

-- Поиск значения NULL

select * from emp
where comm is null;

-----------------------------------------------------

-- Преобразование значений NULL в не - NULL значения

--1

select COALESCE(comm, 0)
from emp

--2

select case
        when comm is null then 0
        else comm 
        end
    from emp;

-----------------------------------------------------

--Поиск по шаблону

select ename, job from emp
where deptno in (10, 20)
and (ename like '%I%' or job like '%ER');


-----------------------------------------------------

-- 2 СОРТИРОВКА РЕЗУЛЬТАТОВ ЗАПРОСА 

-- Возвращение результатов запроса в заданном порядке

select ename, job, sal from emp
where deptno = 10
order by sal asc;


select ename, job, sal from emp
where deptno = 10
order by sal desc;

select ename, job, sal 
from emp
where deptno = 10
order by 3 desc;


-----------------------------------------------------

--Сортировка по нескольким полям

select empno, deptno, sal, ename, job
from  emp
order by deptno, sal desc;

-----------------------------------------------------

--Сортировка по подстрокам















