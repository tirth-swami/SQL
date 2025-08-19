-- 1]WAQTD DETAILS OF AN EMP HIRED BEFORE 1987.
SQL> SELECT * FROM EMP WHERE HIREDATE < '01-JAN-87';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

12 rows selected.
-- 2] WAQTD NAMES OF AN EMP WORKING AS A CLERK & EARNING LESS THAN 1000.
SQL> SELECT ENAME FROM EMP WHERE JOB = 'CLERK' AND SAL<1000;

ENAME
----------
SMITH
JAMES


-- 3] WAQTD NAMES OF AN EMP WORKING AS SALESMAN IN DEPTNO 20.
SQL> SELECT ENAME FROM EMP WHERE JOB = 'SALESMAN' AND DEPTNO = 20;

no rows selected

-- 4] WAQTD SALARY OF PRESIDENT
SQL> SELECT SAL FROM EMP WHERE JOB = 'PRESIDENT';

       SAL
----------
      5000

SQL> SELECT ENAME FROM EMP WHERE JOB = 
  2  

--   5] WAQTD NAMES OF AN EMP WORKING AS ANALYST
SQL> SELECT ENAME FROM EMP WHERE JOB = 'ANALYST';

ENAME
----------
SCOTT
FORD

-- 6] WAQTD NAMES OF AN EMP EARNING LESS THAN 1000.
SQL> SELECT ENAME FROM EMP WHERE SAL< 1000;

ENAME
----------
SMITH
JAMES

-- 7] WAQTD NAMES OF AN EMP EARNING RS.3000.
SQL> SELECT ENAME FROM EMP WHERE SAL = 3000;

ENAME
----------
SCOTT
FORD

-- 8] WAQTD DETAILS OF AN EMP HIRED BEFORE 1981.

SQL> SELECT * FROM EMP WHERE HIREDATE <'01-JAN-81';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20

-- 9] WAQTD NAMES OF AN EMP HIRED AFTER 1982
SQL> SELECT ENAME FROM EMP WHERE HIREDATE > 
  2  '31-DEC-82';

ENAME
----------
SCOTT
ADAMS


-- 10] WAQTD NAMES OF AN EMP EARNING COMMISSION LESS THAN 300.
SQL> SELECT ENAME FROM EMP WHERE COMM
  2  < 300;

ENAME
----------
TURNER

-- 11] WAQTD NAMES OF AN EMP WORKING IN DEPTNO 10
SQL> SELECT ENAME FROM EMP WHERE DEPTNO = 10;

ENAME
----------
CLARK
KING
MILLER


-- 12] WAQTD NAMES OF AN EMP WORKING AS A CLERK & EARNING MORE THAN 1000.
SQL> SELECT ENAME FROM EMP WHERE JOB = 
  2  'CLERK' AND SAL> 1000;

ENAME
----------
ADAMS
MILLER

-- 13] WAQTD DETAILS OF AN EMP WORKING AS MANAGER IN DEPTNO 20.
SQL> SELECT * FROM EMP WHERE JOB ='MANAGER' AND DEPTNO = 20;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20



-- 14] WAQTD DETAILS OF AN EMP WORKING AS CLERK & HIRED AFTER 1980.
SQL> SELECT * FROM EMP WHERE JOB = 'CLERK' AND HIREDATE > '31-DEC-80';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

-- 15] WAQTD DETAILS OF AN EMP WORKING AS AN ANALYST & HIRED AFTER 1981.
SQL> SELECT * FROM EMP WHERE JOB = 'ANALYST' AND HIREDATE >'31-DEC-81
  2  ';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20

-- 16] WAQTD DETAILS OF AN EMP WORKING AS A SALESMAN IN DEPTNO 30 & EARNING MORE THAN 1500.
SQL> SELECT * FROM EMP WHERE JOB = 'SALESMAN' AND DEPTNO = 30 AND SAL > 1500;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30


-- 17] WAQTD DETAILS OF AN EMP WORKING AS CLERK IN DEOTNO 20 & HIRED AFTER 1980.
SQL> SELECT * FROM EMP WHERE JOB = 'CLERK' AND DEPTNO= 20 AND HIREDATE > '31-DEC-80';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20



-- 18] WAQTD DETAILS OF AN EMP WORKING AS PRESIDENT OR ANALYST.
SQL> SELECT * FROM EMP WHERE JOB IN ('PRESIDENT','MANAGER');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7839 KING       PRESIDENT            17-NOV-81       5000                    10

-- 19] WAQTD DETAILS OF AN EMP WHO ARE EARNING MORE THAN 2500 & LESS THAN 3000.

SQL>  SELECT * FROM EMP WHERE SAL >2500 AND SAL<3000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30

-- 20] WAQTD DETAILS OF AN EMP WORKING AS PRESIDENT OR ANALYST.
SQL> SELECT * FROM EMP WHERE JOB IN ('PRESIDENT','ANALYST');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20


-- 21] WAQTD DETAILS OF AN EMP WHO ARE EARNING MORE THAN 2500 & LESS THAN 3000.
SQL> SELECT * FROM EMP WHERE SAL BETWEEN 2500 AND 3000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20


-- 20] WAQTD DETAILS OF AN EMP HIRED AFTER 1981 & BEFORE 1987.

SQL> SELECT * FROM EMP WHERE HIREDATE> '31-DEC-81' AND HIREDATE <'01-JAN-87';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

SQL> SELECT * FROM EMP WHERE JOB = 'MANAGER'AND HIREDATE > '31-DEC-81';

no rows selected

SQL> SELECT * FROM EMP WHERE HIREDATE BETWEEN '01-JAN-87' AND '31-DEC-87';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20


-- 21] WAQTD DETAILS OF AN EMP WORKING AS MANAGER & HIRED AFTER 1981.
SQL> SELECT * FROM EMP WHERE JOB = 'PRESIDENT' OR HIREDATE < '01-JAN-81';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10

SQL> SELECT * FROM EMP WHERE DEPTNO IN (10,20);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

8 rows selected.




SQL> SELECT * FROM EMP WHERE DEPTNO IN (20,30);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

11 rows selected.

SQL> 