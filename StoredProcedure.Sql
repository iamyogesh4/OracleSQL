
Create or replace procedure emp_find
( p_empno In emp.empno%type,
  p_ename Out emp.ename%type,
  p_sal Out emp.sal%type,
  p_deptno Out emp.deptno%type )
               is
Begin
 Select Ename, Sal, Deptno Into
				P_Ename, p_sal, p_deptno from Emp where Empno = p_Empno;
End emp_find;
/


To call above procedure :
-------------------------

Declare
 v_ename emp.ename%type;
 v_sal emp.sal%type;
 v_deptno emp.deptno%type;
Begin
 emp_find( &empno, v_ename, v_sal, v_deptno ); -- calling procedure
 dbms_output.put_line( v_ename );
 dbms_output.put_line( v_sal );
 dbms_output.put_line( v_deptno );
End;
/
  
Enter value for empno: 7788
SCOTT
7056
20
