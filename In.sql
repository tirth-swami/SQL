
-- 1] WAQTD NAMES OF AN EMP WHO IS WORKING IN DEPTNO 10,20

SQL> SELECT ENAME FROM EMP WHERE DEPTNO IN (10,20);

ENAME
----------
SMITH
JONES
CLARK
SCOTT
KING
ADAMS
FORD
MILLER

8 rows selected.

-- 2] WAQTD SAL AND NAME OF EMP'S WHO IS NOT WORKING IN DEPTNO 10,30.
SQL> SELECT SAL , ENAME FROM EMP WHERE DEPTNO NOT IN (10,30);

       SAL ENAME
---------- ----------
       800 SMITH
      2975 JONES
      3000 SCOTT
      1100 ADAMS
      3000 FORD


-- 3] WAQTD NAME & HIREDATE OF EMP'S WHOSE DESIGNATION IS CLERK,SALESMAN,MANAGER.

SQL> SELECT ENAME ,HIREDATE FROM EMP WHERE JOB IN('CLERK','SALESMAN','MANAGER');

ENAME      HIREDATE
---------- ---------
SMITH      17-DEC-80
ALLEN      20-FEB-81
WARD       22-FEB-81
JONES      02-APR-81
MARTIN     28-SEP-81
BLAKE      01-MAY-81
CLARK      09-JUN-81
TURNER     08-SEP-81
ADAMS      23-MAY-87
JAMES      03-DEC-81
MILLER     23-JAN-82

11 rows selected.


-- 5] WAQTD DETAILS OF AN EMP WHO IS EARNING 800,3000,2950.
SQL> SELECT ENAME ,MGR FROM EMP WHERE ENAME NOT IN ('FORD','MILLER','KING','JONES');

ENAME             MGR
---------- ----------
SMITH            7902
ALLEN            7698
WARD             7698
MARTIN           7698
BLAKE            7839
CLARK            7839
SCOTT            7566
TURNER           7698
ADAMS            7788
JAMES            7698

10 rows selected.


-- 6] WAQTD DETAILS OF AN EMP ALONG WITH ANNUAL SALARY IF EMP IS EARNING COMMISSION 300,1400,500.

SQL> SELECT * FROM EMP WHERE SAL IN (800,3000,2950);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

SQL> SELECT EMP.* ,SAL*12 AS ANNUALSAL FROM EMP COMM IN(300,1400,500);
SELECT EMP.* ,SAL*12 AS ANNUALSAL FROM EMP COMM IN(300,1400,500)
                                                *
ERROR at line 1:
ORA-00933: SQL command not properly ended


-- WAQTD DETAILS OF AN EMP ALONG WITH ANNUAL SALARY IF EMP IS EARNING COMMISSION 300,1400,500.

SQL> SELECT EMP.* ,SAL*12 AS ANNUALSAL FROM EMP WHERE  COMM IN(300,1400,500);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO  ANNUALSAL
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30      19200
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30      15000
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30      15000

SQL> SELECT EMP.* ,SAL*12 AS ANNUALSAL FROM EMP WHERE JOB NOT IN ('SALESMAN','MANAGER') AND DEPTNO [

-- 7] WAQTD NAME , SAL,ANNUAL SAL IF EMP IS NOT WORKING AS SALESMAN OR MANAGER IN DEPTNO 30. 
SQL>  SELECT EMP.* ,SAL*12 AS ANNUALSAL FROM EMP WHERE JOB NOT IN ('SALESMAN','MANAGER') AND DEPTNO=
30;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO  ANNUALSAL
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30      11400



-- 8] WAQTD NAME & COMMISSION OF EMP'S WHO IS HIRED ON 3/12/81 OR 28/9/81.
SQL> SELECT ENAME ,COMM FROM EMP WHERE HIREDATE IN ('03-DEC-81','28-SEP-81');

ENAME            COMM
---------- ----------
MARTIN           1400
JAMES
FORD

SQL> SELECT * FROM EMP WHERE JOB IN ( 'MANAGER','ANALYST') AND DEPTNO NOT IN 30;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20


