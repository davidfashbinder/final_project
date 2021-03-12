Create Table "New_One" as (
select distinct "AllStar"."playerID","Players"."nameLast","Players"."nameFirst","Players"."birthMonth","Players"."birthDay","Players"."birthYear","Players"."birthCity","Players"."birthState" from "AllStar"  
inner join "Players"  on "Players"."playerID"="AllStar"."playerID")

select Distinct * from "New_One" 

