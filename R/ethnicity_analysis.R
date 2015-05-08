res_bl = dbGetQuery(con, "select count(*), race_bl from nj_doe_teachers group by race_bl")
res_wh = dbGetQuery(con, "select count(*), race_wh from nj_doe_teachers group by race_wh")
res_hs = dbGetQuery(con, "select count(*), ethnicity from nj_doe_teachers group by ethnicity")
res_as = dbGetQuery(con, "select count(*), race_as from nj_doe_teachers group by race_as")
res_pi = dbGetQuery(con, "select count(*), race_pi from nj_doe_teachers group by race_pi")
res_am = dbGetQuery(con, "select count(*), race_am from nj_doe_teachers group by race_am")

values = c(res_wh[2,1], res_hs[2,1], res_as[2,1], res_bl[2,1], res_pi[2,1], res_am[2,1])
names(values) = c("White", "Hispanic", "Asian", "Black", "Pacific Islander", "Native American")

barplot(values, main="NJ Teachers by Racial Identity", xlab="Race", col=c('white','green','yellow','black','brown','red'))
