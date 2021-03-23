select * from precinct_presidents;
select count(*) from 2016_precinct_president;

create table us_president_2016_votes as
select pp.year, pp.state, pp.state_postal, pp.county_name, pp.county_lat, pp.county_long, pp.precinct, pp.candidate, pp.votes
from precinct_presidents as pp
where pp.year = 2016 and pp.office = "US President"