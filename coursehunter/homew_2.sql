/*1. Получите список всех сотрудников с именем David*/
select first_name from employees
where first_name = 'David'

/*2. Получите список всех сотрудников, у которых job_id равен FI_ACCOUNT*/
select first_name from employees
where job_id = 'FI_ACCOUNT'

/*3. Выведите информацию о имени, фамилии, з/п и номере департамента 
для сотрудников из 50го департамента с зарплатой, большей 4000.*/
select first_name, last_name, salary, department_id from employees
where department_id = 50 and salary > 4000

/*4. Получите список всех сотрудников, которые работают или в 20м, или в 
30м департаменте.*/
select first_name from employees
where department_id in (20, 30)

/*5. Получите список всех сотрудников, у которых вторая и последняя буква 
в имени равна 'a'.*/
select first_name from employees
where first_name like '_a%a'

/*6. Получите список всех сотрудников из 50го и из 80го департамента, у 
которых есть бонус(комиссионные). Отсортируйте строки по email
(возрастающий порядок), используя его порядковый номер.*/
select first_name, department_id, email from employees
where department_id in (50, 80) and commission_pct is not null
order by email 

/*7. Получите список всех сотрудников, у которых в имени содержатся 
минимум 2 буквы 'n'.*/
select first_name from employees
where first_name like '%n%n%' 

/*8. Получить список всех сотрудников, у которых длина имени больше 4 
букв. Отсортируйте строки по номеру департамента (убывающий 
порядок) так, чтобы значения “null” были в самом конце.*/
select first_name, department_id from employees
where first_name like '_____%'
order by department_id desc nulls last

/*9. Получите список всех сотрудников, у которых зарплата находится в 
промежутке от 3000 до 7000 (включительно), нет бонуса 
(комиссионных) и job_id среди следующих вариантов: PU_CLERK, 
ST_MAN, ST_CLERK.*/
select first_name, commission_pct, job_id from employees
where salary between 3000 and 7000 and commission_pct is null
and job_id in ('PU_CLERK', 'ST_MAN', 'ST_CLERK')

/*10.Получите список всех сотрудников у которых в имени содержится 
символ '%'.*/
select first_name from employees
where first_name like '%\%%' escape '\'

/*11.Выведите информацию о job_id, имене и з/п для работников, рабочий 
id которых больше или равен 120 и job_id не равен IT_PROG. 
Отсортируйте строки по job_id (возрастающий порядок) и именам 
(убывающий порядок)*/
select job_id, first_name, salary, employee_id from employees
where employee_id >= 120 and job_id not in ('IT_PROG')
order by job_id, first_name desc 

