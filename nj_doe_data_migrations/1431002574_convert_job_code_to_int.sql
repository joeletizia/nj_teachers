update nj_doe_teachers set jobcode_1 = '0' where jobcode_1 = '';

ALTER TABLE nj_doe_teachers ALTER jobcode_1 TYPE integer using to_number(jobcode_1, '99999999999');
