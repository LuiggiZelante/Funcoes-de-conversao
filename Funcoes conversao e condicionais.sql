SELECT last_name,hire_date,TO_CHAR(hire_date,'DD/MM/YYY HH24:MI:SS')DT_ADMISSÃO
FROM employees;

SELECT sysdate,TO_CHAR(sysdate,'DD/MM/YYY HH24:MI:SS')DATA
FROM dual;

SELECT last_name,TO_CHAR(hire_date,'DD,"de" Month "de" YYYY')DT_ADMISSÃO
FROM employees;

SELECT last_name, TO_CHAR(hire_date,'FMDD "de" Month "de" YYYY')DT_ADMISSÃO
FROM employees;

SELECT first_name,last_name,TO_CHAR(salary,'L99G999G999D99')SALARIO
FROM employees
ORDER BY SALARIO ASC;

SELECT TO_NUMBER('12000.50')
FROM dual;

SELECT TO_DATE('06/02/2020','DD/MM/YYYY') DATA
FROM dual;

SELECT first_name,last_name,hire_date
FROM employees
WHERE hire_date = TO_DATE('17/06/2003','DD/MM/YYYY');


SELECT first_name,last_name,ROUND(MONTHS_BETWEEN(SYSDATE,hire_date),0)NUMERO_MESES
FROM employees
WHERE hire_date = TO_DATE('17/06/2003','DD/MM/YYYY');


SELECT last_name,salary,NVL(commission_pct,0),salary*12 SALARIO_ANUAL,
(salary*12) + (salary*12*NVL(commission_pct,0))REMUNURACAO_ANAUAL
FROM employees;

SELECT last_name,salary,NVL(commission_pct,0),salary*12 SALARIO_ANUAL,
(salary*12) + (salary*12*NVL(commission_pct,0))REMUNURACAO_ANAUAL
FROM employees
WHERE commission_pct <> 0;

SELECT COALESCE(NULL,NULL,'Expressao 3'),COALESCE(NULL,'Expressao 2','Expressao 3'),COALESCE('Expressao 1','Expressao 2','Expressao 3')
FROM dual;

SELECT last_name,employee_id,commission_pct,manager_id,
COALESCE(TO_CHAR(commission_pct),TO_CHAR(manager_id),'Sem percentual de comissao e sem gerente')
FROM employees;

SELECT last_name,salary,commission_pct,NVL2(commission_pct,10,0) PERCENTUAL_ALTERADO
FROM employees;

SELECT NULLIF(1000,1000),NULLIF(1000,2000)
FROM dual;

SELECT last_name,job_id,salary,
    CASE job_id
        WHEN 'IT_PROG'
            THEN 1.10*salary
        WHEN 'ST_CLERK'
            THEN 1.15*salary
        WHEN 'SA_REP'
            THEN 1.20*salary
        ELSE salary
    END "NOVO SALARIO"
FROM employees;

SELECT last_name,job_id,salary,
DECODE(job_id, 'IT_PROG', 1.10*salary,'ST_CLERK',1.15*salary,'SA_REP',1.20*salary,salary)"NOVO SALARIO"
FROM employees;



