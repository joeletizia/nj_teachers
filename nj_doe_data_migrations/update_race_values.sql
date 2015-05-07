update nj_doe_teachers set race_wh = 'N' where race_wh = 'n';
update nj_doe_teachers set race_wh = 'Y' where race_wh = 'y';
update nj_doe_teachers set race_bl = 'N' where race_bl = 'n';
update nj_doe_teachers set race_bl = 'Y' where race_bl = 'y';
update nj_doe_teachers set race_as = 'N' where race_as = 'n';
update nj_doe_teachers set race_as = 'Y' where race_as = 'y';
update nj_doe_teachers set race_am = 'N' where race_am = 'n';
update nj_doe_teachers set race_am = 'Y' where race_am = 'y';
update nj_doe_teachers set race_pi = 'N' where race_pi = 'n';
update nj_doe_teachers set race_pi = 'Y' where race_pi = 'y';


ALTER TABLE nj_doe_teachers ALTER race_wh TYPE boolean
USING CASE race_wh WHEN 'Y' THEN TRUE ELSE FALSE END;

ALTER TABLE nj_doe_teachers ALTER race_wh TYPE boolean
USING CASE race_bl WHEN 'Y' THEN TRUE ELSE FALSE END;

ALTER TABLE nj_doe_teachers ALTER race_wh TYPE boolean
USING CASE race_am WHEN 'Y' THEN TRUE ELSE FALSE END;

ALTER TABLE nj_doe_teachers ALTER race_wh TYPE boolean
USING CASE race_pi WHEN 'Y' THEN TRUE ELSE FALSE END;

ALTER TABLE nj_doe_teachers ALTER race_wh TYPE boolean
USING CASE race_as WHEN 'Y' THEN TRUE ELSE FALSE END;
