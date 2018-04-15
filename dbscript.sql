
Create Table Matches(
id int,
seriesId int,
startTime varchar(100),
match_desc varchar(100),
type varchar(100),
venueId int,
team1Id int,
team2Id int
)

Insert into Matches 
Values
(12345,1234,'273647','3rd T20I','T20',121,1,7)
,(12348,1234,'273789','2nd ODI','ODI',123,1,7)
,(12459,1236,'278232','2nd Test','Test',89,4,5)
,(12451,1236,'278159','1st Test','Test',85,4,5)
,(35676,1238,'373647','3rd ODI','ODI',101,2,8)
,(99991,9991,'191829','1st T20I','T20',191,11,14)
,(99992,9991,'191830','2nd T20I','T20',192,12,13)
,(99993,9991,'191831','3rd T20I','T20',193,11,14)

Create Table Series(
id int,
name varchar(1000),
startDate varchar(100),
endDate varchar(100),
type varchar(100)
)

Insert into Series
Values
(1234,'India tour of Zimbabwe, 2016',273642,273792,'International')
,(1236,'Australia tour of Srilanka, 2016',278159,278191,'International')
,(1238,'Pakistan tour of Bangladesh, 2017',373640,373647,'International')
,(1249,'South Africa tour of Newzealand, 2017',273642,273792,'International')
,(1258,'England tour of Bangladesh, 2018',273642,273792,'International')
,(1258,'England tour of Bangladesh, 2018',273642,273792,'International')
,(9991,'IPL 2018',191831,191845,'Domestic')
,(9992,'Ranji Trophy 2018',191865,191885,'Domestic')


Create Table Venues(
id int,
name varchar(1000),
city varchar(100),
country varchar(100),
location varchar(100)
)

Insert into Venues
Values
(121,'Harare Sports Club','Harare','Zimbabwe','Harare, Zimbabwe')
,(123,'Harare Sports Club','Harare','Zimbabwe','Harare, Zimbabwe')
,(89,'XYZ Srilanka','Colombo','Srilanka','Colombo, Srilanka')
,(85,'XYZ Srilanka','Colombo','Srilanka','Colombo, Srilanka')
,(101,'ABC Bangladesh','Dhaka','Bangladesh','Dhaka, Bangladesh')
,(191,'ABC Kolkata','Kolkata','India','Kolkata, India')
,(192,'EFG Mumbai','Mumbai','India','Mumbai, India')
,(193,'HIJ Hyderabad','Hyderabad','India','Hyderabad, India')

Create Table Teams(
id int,
name varchar(100),
sname varchar(10)
)

Insert into Teams
Values
(1,'India','IND')
,(2,'Pakistan','PAK')
,(3,'South Africa','RSA')
,(4,'Australia','AUS')
,(5,'Srilanka','SRI')
,(6,'NewzeaLand','NZL')
,(7,'Zimbabwe','ZIM')
,(8,'Bangladesh','BAN')
,(11,'KKR','KKR')
,(14,'SRH','SRH')
,(12,'MI','MI')
,(13,'CSK','CSK')

Select m.id matchId, m.seriesId seriesId, s.name seriesName, s.startDate seriesStartDate, s.endDate seriesEndDate, s.type seriesType, m.startTime matchStartTime,
m.match_desc matchDesc, m.type as type, m.venueId venueId, v.name venueName, v.city city, v.country country, v.location as location, 
m.team1Id team1Id, t1.name team1Name, t1.sname team1sname, m.team2Id team2Id, t2.name team2Name, t2.sname team2sname
from Matches m
inner join Series s on s.id=m.seriesId
inner join Venues v on v.id=m.venueId
inner join Teams t1 on t1.id= m.team1Id
inner join Teams t2 on t2.id= m.team2Id
