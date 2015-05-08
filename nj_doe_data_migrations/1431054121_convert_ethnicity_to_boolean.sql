update nj_doe_teachers set ethnicity = 'Y' where ethnicity = 'X';
update nj_doe_teachers set ethnicity = 'N' where ethnicity = 'n';
update nj_doe_teachers set ethnicity = 'Y' where ethnicity = 'y';

ALTER TABLE nj_doe_teachers ALTER ethnicity TYPE boolean
USING CASE ethnicity WHEN 'Y' THEN TRUE ELSE FALSE END;

