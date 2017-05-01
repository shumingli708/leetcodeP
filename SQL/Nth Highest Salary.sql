Write a SQL query to get the nth highest salary from the Employee table.

+----+--------+
| Id | Salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+
For example, given the above Employee table, the nth highest salary where n = 2 is 200. If there is no nth highest salary, then the query should return null.


CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
      Select  max(t1.Salary) as Salary
      From Employee t1
      where (select count(distinct(Salary)) from Employee where Salary >= t1.Salary) = N

      
  );
END

