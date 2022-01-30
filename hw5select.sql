select name, count(executors_id)  from genre_executors ge 
join genre g on g.id = ge.genre_id
group by name;
select a."name", count(album_id) from trek t 
join album a on a.id =t.album_id
where year_v = 2019 or year_v = 2020 
group by a."name" ;
select a."name", round(avg(duration)) from trek t 
join album a on a.id =t.album_id
group by a."name" ;
select a."name"  from executors_album ea 
join album a on a.id  = ea.album_id 
join executors e on e.id = ea.executors_id 
where year_v != 2020;
select c."name"  from trek_collection tc 
join trek t on t.id = tc.trek_id 
join collector c on c.id = tc.collector_id 
join executors_album ea on t.album_id = ea.album_id 
join executors e on e.id = ea.executors_id 
where e."name" = 'Nirvana';
select e."name"  from genre_executors ge  
join executors e on e.id = ge.executors_id 
join genre g on g.id = ge.genre_id 
group by e."name" 
having count(g."name") != 1;
select t."name"  from trek_collection tc
right join trek t on tc.trek_id = t.id 
where trek_id is null;
select e."name"  from trek t 
join executors_album ea on ea.album_id = t.album_id 
join executors e on e.id = ea.executors_id 
where duration = (select min (duration) from trek);
select a."name"   from trek t 
join album a on a.id = t.album_id 
group by a."name"
having count(a."name") = 
(select count(a."name")   from trek t 
join album a on a.id = t.album_id 
group by a."name"
order by count(a."name")
limit 1);


