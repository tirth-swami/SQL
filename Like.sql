-- Employee Table
SQL> SELECT * FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

14 rows selected.


-- 1] WAQTD NAMES OF AN EMP WHOSE NAME STARTS WITH CHARACTER 'A'.

SQL> SELECT ENAME FROM EMP WHERE ENAME LIKE 'A%';

ENAME
----------
ALLEN
ADAMS

-- 2] WAQTD NAMES OF AN EMP WHOSE DESIGNATION STARTS WITH CHARACTER 'S'.
SQL> SELECT ENAME FROM EMP WHERE JOB LIKE 'S%';

ENAME
----------
ALLEN
WARD
MARTIN
TURNER


-- 3] WAQTD DETAILS OF AN EMP WHOSE NAME ENDS WITH CHARACTER 'T'.
SQL> SELECT * FROM EMP WHERE ENAME LIKE '%T';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20



-- 4] WAQTD DETAILS OF AN EMP WHOSE NAME HAS CHARACTER 'A'.
SQL> SELECT * FROM EMP WHERE ENAME LIKE '%A%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30

7 rows selected.


-- 5] WAQTD NAMES OF AN EMP WHO HAS CHARACTER 'A' IN SECOND PLACE OF HIS NAME.

SQL> SELECT ENAME FROM EMP WHERE ENAME LIKE '_A%';

ENAME
----------
WARD
MARTIN
JAMES


-- 6] WAQTD DETAILS OF AN EMP HAVING 'A' IN SECOND LAST PLACE.
SQL> SELECT * FROM EMP WHERE ENAME LIKE'%A_';

no rows selected

-- 7] WAQTD DETAILS OF AN EMP HAVING 'S' IN THE LAST PLACE
SQL> SELECT * FROM EMP WHERE ENAME LIKE '%S';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30


-- 8] WAQTD NAMES OF AN EMP HAVING 'E' IN THE FOURTH PLACE.
SQL> SELECT ENAME FROM EMP WHERE ENAME LIKE '___E%';

ENAME
----------
ALLEN
JONES
JAMES


-- 9] WAQTD NAME OF AN EMP WHO HAVING CHARACTER 'A' IN FIRST PLACE & 'S' IN THE LAST PLACE.
SQL> SELECT ENAME FROM EMP WHERE ENAME LIKE  'A%' AND ENAME LIKE '%S';

ENAME
----------
ADAMS

-- 10] WAQTD NAME & SAL OF EMP'S IF THEY ARE EARNING 3 DIGIT SALARY.
SQL> SELECT ENAME ,SAL FROM EMP WHERE SAL LIKE '___';

ENAME             SAL
---------- ----------
SMITH             800
JAMES             950

-- 11] WAQTD NAME & HIREDATE OF EMP IF THEY WERE HIRED IN THE YEAR 82.

SQL> SELECT ENAME ,HIREDATE FROM EMP WHERE HIREDATE LIKE '%%82';

ENAME      HIREDATE
---------- ---------
MILLER     23-JAN-82


-- 12] WAQTD DETAILS OF AN EMP WHO HAVING CHARACTER 'A' IN FIRST PLACE OR EMP'S IF THEY HAVE 'S' IN LAST PLACE.


SQL> SELECT * FROM EMP WHERE ENAME LIKE 'A%' OR ENAME LIKE '%S';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30


-- 13] WAQTD NAME OF AN EMP WHO HAVING CHARACTER 'A' IN FIRST PLACE & WORKING IN DEPTNO 10 OR 20.
SQL> SELECT ENAME FROM EMP WHERE ENAME LIKE 'A%' AND DEPTNO IN (10,20);

ENAME
----------
ADAMS


-- 14] WAQTD NAME & SALARY OF EMP IF THEY ARE EARNING 4 DIGIT SALARY.
SQL> SELECT ENAME ,SAL FROM EMP WHERE SAL LIKE '____';

ENAME             SAL
---------- ----------
ALLEN            1600
WARD             1250
JONES            2975
MARTIN           1250
BLAKE            2850
CLARK            2450
SCOTT            3000
KING             5000
TURNER           1500
ADAMS            1100
FORD             3000
MILLER           1300

12 rows selected.

-- 15] WAQTD NAME, HIREDATE IF THEY ARE HIRED IN THE YEAR 81 & EARNING SALARY MORE THAN 2000.
SQL> SELECT ENAME ,HIREDATE FROM EMP WHERE HIREDATE LIKE '%%81' AND SAL > 2000;

ENAME      HIREDATE
---------- ---------
JONES      02-APR-81
BLAKE      01-MAY-81
CLARK      09-JUN-81
KING       17-NOV-81
FORD       03-DEC-81





-- 16] WAQTD DETAILS OF EMP'S IF THEY ARE HAVING STRING 'MAN' IN THEIR JOB.
SQL> SELECT* FROM EMP WHERE JOB LIKE '%MAN%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

7 rows selected.


-- 17] WAQTD DETAILS OF AN EMP WHO HAVING CHARACTER 'A' IN FIRST PLACE, 'D' IN SECOND PLACE & 'S' IN LAST PLACE.
SQL> SELECT * FROM EMP WHERE ENAME LIKE 'A%' AND ENAME LIKE '_D%' AND ENAME LIKE '%S';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20




SQL> SELECT * FROM EMP WHERE JOB LIKE 'SALESMAN' OR JOB LIKE 'MANAGER' AND DEPTNO IN 20 AND HIREDATE
 LIKE '%%83';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

