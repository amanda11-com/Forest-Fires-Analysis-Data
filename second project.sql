use ForestFire 1 sql
go
select * from forestfires

Qyestion 1:Find the average temperture and relative humidty for fire that occured in the regions
Select x,y,avg[temp]as avg_temp, avg[RH] as avg_rh from forestfires 
group by x,y

Question 2: Identify the fires with the largest area bruned
Select top 1 Area,x,y, from forestfires
order by Area desc

Question 3: Identify the region with the higest frequncy of fire
Select top 1,x,y, count[*] as fire_count from forest fires 
group by x,y
order by fire_count desc

Question 4: Find the month with the higest average fire area
Select top 1 month, Avg[area] as avg_area from forest fires
group by month
order by avg_area desc 

Question 5: Whart is the total area bruned by fires in each month 
Select month, sum[Area] as total_area from forestfires 
group by month 
order by total_area desc

Question 6: What is the frequency of fires in each month 
Select month,count[*] as fire_count from forestfires 
group by month 
order by fire_count desc

Question 7: What are the details of the top 10 fires with largest area bured 
Select top 10*from forestfires 
order by area desc
