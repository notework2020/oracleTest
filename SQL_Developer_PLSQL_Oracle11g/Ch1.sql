set SERVEROUTPUT on

DECLARE 
 a NUMBER;
BEGIN
 a:= 23 + 5;
 null;
 null;
 DBMS_OUTPUT.PUT_LINE('valye of a: '||a);
end;


DECLARE 
 a INTEGER(10);
BEGIN
a:=12;
 DBMS_OUTPUT.PUT_LINE(a);
end;

привет