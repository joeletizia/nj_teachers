ALTER TABLE nj_doe_teachers ADD COLUMN id SERIAL;
   UPDATE nj_doe_teachers SET id = DEFAULT;
   ALTER TABLE nj_doe_teachers ADD PRIMARY KEY (id);
