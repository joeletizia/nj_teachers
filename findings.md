teachers df = teachers = dbGetQuery(con, "select * from nj_doe_teachers join job_codes on job_codes.id = nj_doe_teachers.jobcode_1 where job_codes.id >= 1000;")


Median NJ teachers salary
Job codes >= 1000
64306.5

Median NJ teachers salary by county
1   MERCER 69794.0
2   UNION 68794.0
3   HUDSON  68360.0
4   SUSSEX  68235.0
5   ESSEX 68000.0
6   BERGEN  67974.0
7   CAPE MAY  66793.0
8   MORRIS  66150.0
9   MIDDLESEX 65933.0
10  SOMERSET  64245.0
11  BURLINGTON  64027.0
12  MONMOUTH  63900.0
13  WARREN  63288.0
14  CAMDEN  62540.0
15  ATLANTIC  62117.0
16  PASSAIC 61950.0
17  HUNTERDON 61573.0
18  GLOUCESTER  60800.0
19  CUMBERLAND  59738.0
20  SALEM 58899.5
21  OCEAN 58837.0
22  CHARTERS  50678.0

From wikipedia
Compared with Median family income 
1   Hunterdon $121,166
2   Morris  $114,694
3   Somerset  $115,214
4   Bergen  $100,310
5   Monmouth  $102,074
6   Mercer  $88,694
7   Sussex  $93,701
8   Burlington  $91,185
9   Union $80,818
10  Cape May  $69,978
11  Middlesex $91,543
12  Warren  $91,543
13  Essex $68,683
14  Gloucester  $85,832
15  Hudson  $58,968
16  Ocean $73,672
17  Camden  $74,385
18  Salem $72,537
19  Atlantic  $66,920
20  Passaic $67,208
21  Cumberland  $60,642


Results: Little correlation!
df = data.frame(counties, teacher_salaries_by_county, median_household_salaries_by_county)
cor(df$median_teacher_salary, df$median_household_income) 

0.1401349


Age of teachers

Oldest: 1925 Custodial Services (is he a custodian or does he TEACH custodial services?)
select min(yob) from nj_doe_teachers t join job_codes j on j.id = t.jobcode_1 where j.id >= 1000;
select * from nj_doe_teachers where yob = 1925;

Youngest: a few born in 1998.

Distribution:

Median: 1971
SD: 11.8

x = table(teachers$yob)
barplot(x, main="YOB distribution")

