ALTER TABLE nj_doe_teachers ALTER yob TYPE integer
USING (yob::integer);

update nj_doe_teachers 
set yob = yob + 1900
where yob < 100

