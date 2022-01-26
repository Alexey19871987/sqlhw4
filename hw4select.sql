select name, year_v from album 
	where year_v = '2018' ;
select name, duration from trek 
	order by duration desc
		limit 1;
select name from trek
	where duration >= 210;  
select name from collector
	where    year_v >= 2018 and year_v <= 2020;
select name from trek 
	where name ilike '%%my%%'; 
select name from trek 
	where name ilike '%%мой%%';
select name from executors
	where name not like '%% %%';