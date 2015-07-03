library(RPostgreSQL)
drv <- dbDriver("PostgreSQL")
con <- dbConnect(drv, dbname="teacher_data_new",host="localhost",port=5432,user="joeletizia")
dbGetQuery(con, "select count(*), race_bl from nj_doe_teachers group by race_bl")
