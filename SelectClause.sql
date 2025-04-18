 
-- Emp Table
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

-- 1] WAQTD EMPLOYEE NAME, SAL OF ALL THE EMPLOYEES.
SQL> SELECT ENAME,SAL FROM EMP;

ENAME             SAL
---------- ----------
SMITH             800
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
JAMES             950
FORD             3000
MILLER           1300

14 rows selected.
-- 2] WAQTD JOB & SALARY OF ALL THE EMPLOYEES
SQL> SELECT JOB ,SAL FROM EMP ;

JOB              SAL
--------- ----------
CLERK            800
SALESMAN        1600
SALESMAN        1250
MANAGER         2975
SALESMAN        1250
MANAGER         2850
MANAGER         2450
ANALYST         3000
PRESIDENT       5000
SALESMAN        1500
CLERK           1100
CLERK            950
ANALYST         3000
CLERK           1300

14 rows selected.
-- 3] WAQTD NAME & JOB OF ALL EMPLOYEES
SQL> SELECT ENAME,JOB FROM EMP;

ENAME      JOB
---------- ---------
SMITH      CLERK
ALLEN      SALESMAN
WARD       SALESMAN
JONES      MANAGER
MARTIN     SALESMAN
BLAKE      MANAGER
CLARK      MANAGER
SCOTT      ANALYST
KING       PRESIDENT
TURNER     SALESMAN
ADAMS      CLERK
JAMES      CLERK
FORD       ANALYST
MILLER     CLERK

14 rows selected.




-- 5] WAQTD THE TABLES PRESENT IN THE DATABASE
SQL> SELECT * FROM TAB;

TNAME                          TABTYPE  CLUSTERID
------------------------------ ------- ----------
DEPT                           TABLE
EMP                            TABLE
BONUS                          TABLE
SALGRADE                       TABLE
HOD                            TABLE
STUD                           TABLE
HOSPITAL                       TABLE
DOCTOR                         TABLE
PATIENT                        TABLE
ORGANIZATION                   TABLE

10 rows selected.
-- 6] WAQTD EMPLOYEE ID & DEPARTMENT NO OF ALL THE
-- EMP'S.

SQL> SELECT EMPNO,DEPTNO FROM EMP;

     EMPNO     DEPTNO
---------- ----------
      7369         20
      7499         30
      7521         30
      7566         20
      7654         30
      7698         30
      7782         10
      7788         20
      7839         10
      7844         30
      7876         20
      7900         30
      7902         20
      7934         10

14 rows selected.
-- 7] WAQTD EMP NAME & HIREDATE OF ALL EMP'S.
SQL> SELECT ENAME,HIREDATE FROM EMP;

ENAME      HIREDATE
---------- ---------
SMITH      17-DEC-80
ALLEN      20-FEB-81
WARD       22-FEB-81
JONES      02-APR-81
MARTIN     28-SEP-81
BLAKE      01-MAY-81
CLARK      09-JUN-81
SCOTT      19-APR-87
KING       17-NOV-81
TURNER     08-SEP-81
ADAMS      23-MAY-87
JAMES      03-DEC-81
FORD       03-DEC-81
MILLER     23-JAN-82

14 rows selected.

-- 8] WAQTD NAME & DESIGNATION OF ALL EMP'S.

SQL> SELECT ENAME, JOB FROM EMP;

ENAME      JOB
---------- ---------
SMITH      CLERK
ALLEN      SALESMAN
WARD       SALESMAN
JONES      MANAGER
MARTIN     SALESMAN
BLAKE      MANAGER
CLARK      MANAGER
SCOTT      ANALYST
KING       PRESIDENT
TURNER     SALESMAN
ADAMS      CLERK
JAMES      CLERK
FORD       ANALYST
MILLER     CLERK

14 rows selected.

-- 9] WAQTD NAME & ANNUAL SALARY OF ALL THE EMP'S.

SQL> SELECT ENAME, SAL*12 AS ANNUALSAL FROM EMP;

ENAME       ANNUALSAL
---------- ----------
SMITH            9600
ALLEN           19200
WARD            15000
JONES           35700
MARTIN          15000
BLAKE           34200
CLARK           29400
SCOTT           36000
KING            60000
TURNER          18000
ADAMS           13200
JAMES           11400
FORD            36000
MILLER          15600

14 rows selected.

-- 10] WAQTD NAME & HALF-TERM SALARY OF ALL THE EMP'S.
SQL> SELECT ENAME, SAL*6 FROM EMP;

ENAME           SAL*6
---------- ----------
SMITH            4800
ALLEN            9600
WARD             7500
JONES           17850
MARTIN           7500
BLAKE           17100
CLARK           14700
SCOTT           18000
KING            30000
TURNER           9000
ADAMS            6600
JAMES            5700
FORD            18000
MILLER           7800

14 rows selected.


-- 11] WAQTD NAME, SALARY & SALARY WITH 25% HIKE.
SQL>  SELECT ENAME,SAL, SAL+SAL*25/100 AS "25%HIKE" FROM EMP;

ENAME             SAL    25%HIKE
---------- ---------- ----------
SMITH             800       1000
ALLEN            1600       2000
WARD             1250     1562.5
JONES            2975    3718.75
MARTIN           1250     1562.5
BLAKE            2850     3562.5
CLARK            2450     3062.5
SCOTT            3000       3750
KING             5000       6250
TURNER           1500       1875
ADAMS            1100       1375
JAMES             950     1187.5
FORD             3000       3750
MILLER           1300       1625

14 rows selected.

-- 12] WAQTD NAME, SALARY & SALARY WITH 25% DEDUCTION
SQL> SELECT ENAME , SAL,SAL-SAL*25/100 FROM EMP;

ENAME             SAL SAL-SAL*25/100
---------- ---------- --------------
SMITH             800            600
ALLEN            1600           1200
WARD             1250          937.5
JONES            2975        2231.25
MARTIN           1250          937.5
BLAKE            2850         2137.5
CLARK            2450         1837.5
SCOTT            3000           2250
KING             5000           3750
TURNER           1500           1125
ADAMS            1100            825
JAMES             950          712.5
FORD             3000           2250
MILLER           1300            975

14 rows selected.


-- 13] WAQTD NAME, SALARY & SAL WITH 12% DEDUCTION.
SQL> SELECT ENAME , SAL,SAL-SAL*12/100 FROM EMP;


ENAME             SAL SAL-SAL*12/100
---------- ---------- --------------
SMITH             800            704
ALLEN            1600           1408
WARD             1250           1100
JONES            2975           2618
MARTIN           1250           1100
BLAKE            2850           2508
CLARK            2450           2156
SCOTT            3000           2640
KING             5000           4400
TURNER           1500           1320
ADAMS            1100            968
JAMES             950            836
FORD             3000           2640
MILLER           1300           1144

14 rows selected.

-- 14] WAQTD NAME, SALARY & SAL WITH 18% HIKE.
SQL> SELECT ENAME , SAL,SAL+SAL*18/100 FROM EMP;

ENAME             SAL SAL+SAL*18/100
---------- ---------- --------------
SMITH             800            944
ALLEN            1600           1888
WARD             1250           1475
JONES            2975         3510.5
MARTIN           1250           1475
BLAKE            2850           3363
CLARK            2450           2891
SCOTT            3000           3540
KING             5000           5900
TURNER           1500           1770
ADAMS            1100           1298
JAMES             950           1121
FORD             3000           3540
MILLER           1300           1534

14 rows selected.

-- 15] WAQTD NAME, SALARY & SAL WITH 40% DEDUCTION.
SQL> SELECT  ENAME , SAL,SAL-SAL*40/100  "40%DEDUCT" FROM EMP;

ENAME             SAL  40%DEDUCT
---------- ---------- ----------
SMITH             800        480
ALLEN            1600        960
WARD             1250        750
JONES            2975       1785
MARTIN           1250        750
BLAKE            2850       1710
CLARK            2450       1470
SCOTT            3000       1800
KING             5000       3000
TURNER           1500        900
ADAMS            1100        660
JAMES             950        570
FORD             3000       1800
MILLER           1300        780

14 rows selected.



-- 17] WAQTD NAME, SALARY & SAL WITH 5000 BONUS.
SQL> SELECT ENAME , SAL,SAL+5000 AS SALBONUS FROM EMP ;

ENAME             SAL   SALBONUS
---------- ---------- ----------
SMITH             800       5800
ALLEN            1600       6600
WARD             1250       6250
JONES            2975       7975
MARTIN           1250       6250
BLAKE            2850       7850
CLARK            2450       7450
SCOTT            3000       8000
KING             5000      10000
TURNER           1500       6500
ADAMS            1100       6100
JAMES             950       5950
FORD             3000       8000
MILLER           1300       6300

14 rows selected.

-- 18] WAQTD NAME, SALARY, HALF TERM SAL & 4500 BONUS IN
-- HALF-TERM SALARY.
SQL> SELECT ENAME,SAL,SAL*6 AS HALFTERMSAL ,SAL*6+4500 AS SALBONUS FROM EMP;

ENAME             SAL HALFTERMSAL   SALBONUS
---------- ---------- ----------- ----------
SMITH             800        4800       9300
ALLEN            1600        9600      14100
WARD             1250        7500      12000
JONES            2975       17850      22350
MARTIN           1250        7500      12000
BLAKE            2850       17100      21600
CLARK            2450       14700      19200
SCOTT            3000       18000      22500
KING             5000       30000      34500
TURNER           1500        9000      13500
ADAMS            1100        6600      11100
JAMES             950        5700      10200
FORD             3000       18000      22500
MILLER           1300        7800      12300

14 rows selected.

-- 19] WAQTD NAME, SALARY, ANNUAL SAL & 7800 BONUS IN
-- ANNUAL SALARY.

SQL> SELECT ENAME ,SAL ,SAL*12 AS ANNUAL_SAL,SAL*12+7800 ANNUALSALBONUS FROM EMP ;

ENAME             SAL ANNUAL_SAL ANNUALSALBONUS
---------- ---------- ---------- --------------
SMITH             800       9600          17400
ALLEN            1600      19200          27000
WARD             1250      15000          22800
JONES            2975      35700          43500
MARTIN           1250      15000          22800
BLAKE            2850      34200          42000
CLARK            2450      29400          37200
SCOTT            3000      36000          43800
KING             5000      60000          67800
TURNER           1500      18000          25800
ADAMS            1100      13200          21000
JAMES             950      11400          19200
FORD             3000      36000          43800
MILLER           1300      15600          23400

14 rows selected.

-- 20] WAQTD NAME, ANNUAL SAL & SALARY WITH 34% HIKE.
SQL> SELECT ENAME ,SAL,SAL+SAL*34/100 FROM EMP;

ENAME             SAL SAL+SAL*34/100
---------- ---------- --------------
SMITH             800           1072
ALLEN            1600           2144
WARD             1250           1675
JONES            2975         3986.5
MARTIN           1250           1675
BLAKE            2850           3819
CLARK            2450           3283
SCOTT            3000           4020
KING             5000           6700
TURNER           1500           2010
ADAMS            1100           1474
JAMES             950           1273
FORD             3000           4020
MILLER           1300           1742

14 rows selected.

-- 22] WAQTD JOB, HIREDATE, DEPTNO, SAL, SAL WITH 4300
-- BONUS, HAL-TERM SAL WITH 3790 BONUS.


SQL> SELECT JOB ,HIREDATE, DEPTNO,SAL,SAL+4300 AS SALBONUS ,SAL*6 AS HALFTERMSAL ,SAL*6+3790 HALFTER
MSALBONUS FROM EMP;

JOB       HIREDATE      DEPTNO        SAL   SALBONUS HALFTERMSAL HALFTERMSALBONUS
--------- --------- ---------- ---------- ---------- ----------- ----------------
CLERK     17-DEC-80         20        800       5100        4800             8590
SALESMAN  20-FEB-81         30       1600       5900        9600            13390
SALESMAN  22-FEB-81         30       1250       5550        7500            11290
MANAGER   02-APR-81         20       2975       7275       17850            21640
SALESMAN  28-SEP-81         30       1250       5550        7500            11290
MANAGER   01-MAY-81         30       2850       7150       17100            20890
MANAGER   09-JUN-81         10       2450       6750       14700            18490
ANALYST   19-APR-87         20       3000       7300       18000            21790
PRESIDENT 17-NOV-81         10       5000       9300       30000            33790
SALESMAN  08-SEP-81         30       1500       5800        9000            12790
CLERK     23-MAY-87         20       1100       5400        6600            10390
CLERK     03-DEC-81         30        950       5250        5700             9490
ANALYST   03-DEC-81         20       3000       7300       18000            21790
CLERK     23-JAN-82         10       1300       5600        7800            11590

14 rows selected.

 
SQL> SELECT ENAME ,SAL ,SAL+3400 SALHIKE,SAL*12 ANNUALSAL ,SAL*12 +5768 ANNUALSALHIKE FROM EMP;

ENAME             SAL    SALHIKE  ANNUALSAL ANNUALSALHIKE
---------- ---------- ---------- ---------- -------------
SMITH             800       4200       9600         15368
ALLEN            1600       5000      19200         24968
WARD             1250       4650      15000         20768
JONES            2975       6375      35700         41468
MARTIN           1250       4650      15000         20768
BLAKE            2850       6250      34200         39968
CLARK            2450       5850      29400         35168
SCOTT            3000       6400      36000         41768
KING             5000       8400      60000         65768
TURNER           1500       4900      18000         23768
ADAMS            1100       4500      13200         18968
JAMES             950       4350      11400         17168
FORD             3000       6400      36000         41768
MILLER           1300       4700      15600         21368

14 rows selected.

SQL> 