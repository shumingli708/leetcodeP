Write a SQL query to find all numbers that appear at least three times consecutively.

+----+-----+
| Id | Num |
+----+-----+
| 1  |  1  |
| 2  |  1  |
| 3  |  1  |
| 4  |  2  |
| 5  |  1  |
| 6  |  2  |
| 7  |  2  |
+----+-----+
For example, given the above Logs table, 1 is the only number that appears consecutively for at least three times.


# Write your MySQL query statement below
select distinct t1.Num as ConsecutiveNums 
from Logs t1, Logs t2, Logs t3
where t1.Num = t2.Num and t2.Num = t3.Num and t2.id =t1.id+1 and t3.id = t2.id+1


