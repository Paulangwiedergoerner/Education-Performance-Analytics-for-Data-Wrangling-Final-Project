-- Total students grouped by gender
SELECT gender, COUNT(*) AS TotalStudents
FROM student
GROUP BY gender;

-- Number of students grouped by race/ethnicity
SELECT race_ethnicity, COUNT(*) AS TotalStudents
FROM student
GROUP BY race_ethnicity
ORDER BY TotalStudents DESC;

-- Percentage of students who completed the test preparation course
SELECT test_preparation_course, 
       ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM student)), 2) AS Percentage
FROM student
GROUP BY test_preparation_course;