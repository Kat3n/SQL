/*1. Используя функции, получите список всех сотрудников у которых в 
имени есть буква 'b' (без учета регистра).*/
select * from employees
where lower(first_name) like '%b%'

select * from employees
where instr(lower(first_name), 'b') > 0


2. Используя функции, получите список всех сотрудников у которых в 
имени содержатся минимум 2 буквы 'a'.*/
select * from employees
where lower(first_name) like '%aa%'

select * from employees
where instr(lower(first_name), 'a', 1, 2) > 0

/*3. Получите первое слово из имени департамента, для тех
департаментов, у которых название состоит больше, чем из одного 
слова.*/
select department_name, substr(department_name, 1, instr(department_name, ' ')-1) vvv
from departments
where instr(department_name, ' ') > 0

/*4. Получите имена сотрудников без первой и последней буквы в имени.*/
select first_name, substr(first_name, 2, length(first_name)-2) from employees
