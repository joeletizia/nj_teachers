alter table nj_doe_teachers alter column salary type numeric using to_number(salary, '999999999');
