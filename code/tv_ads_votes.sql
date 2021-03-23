select * 
from us_president_2016_votes
where county_name like "%Anderson%";

select COUNTY, message, count(distinct id) as ad_count
from tv_Ads_2016
where candidates = "Hillary Clinton"
group by COUNTY, message
having LENGTH(COUNTY) > 0
order by ad_count desc;

select COUNTY, message, count(distinct id) as ad_count
from tv_Ads_2016
where candidates = "Donald Trump"
group by COUNTY, message
having LENGTH(COUNTY) > 0
order by ad_count desc;

select *
from tv_Ads_2016
where COUNTY = "Hillsborough";

select * from us_pres_votes_2016;

select county_name, sum(votes) as vote_tally
from us_pres_votes_2016
where candidate = "Hillary Clinton" and county_name = "Hillsborough County"
group by county_name
order by vote_tally desc;

select county_name, sum(votes) as vote_tally
from us_pres_votes_2016
where candidate = "Donald trump" and county_name = "Hillsborough"
group by county_name
order by vote_tally desc;

select COUNTY, message, count(distinct id) as ad_count, county_name, sum(votes) as vote_tally
from tv_ads_2016 as ads;

create table trump_favored_ads as
select *
from tv_Ads_2016
where (candidates = "Donald Trump" and message = "pro") or (candidates = "Hillary Clinton" and message = "con");


create table hillary_favored_ads as
select *
from tv_Ads_2016
where (candidates = "Hillary Clinton" and message = "pro") or (candidates = "Donald Trump" and message = "con");

select distinct month_aired
from hillary_favored_ads;

select distinct month_aired
from trump_favored_ads;