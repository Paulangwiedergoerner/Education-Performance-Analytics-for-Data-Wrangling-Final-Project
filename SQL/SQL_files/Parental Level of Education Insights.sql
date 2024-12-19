-- Total students grouped by parental level of education
SELECT parental_level_of_education, COUNT(*) AS TotalStudents
FROM student
GROUP BY parental_level_of_education
ORDER BY TotalStudents DESC;

-- Average total score by parental level of education
SELECT parental_level_of_education, ROUND(AVG(sc.total_score), 2) AS AvgTotalScore
FROM student AS s
JOIN performance AS sc ON s.roll_no = sc.roll_no
GROUP BY parental_level_of_education
ORDER BY AvgTotalScore DESC;

-- Percentage of students who completed the test preparation course grouped by parental education level
SELECT parental_level_of_education, test_preparation_course, 
       ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM student)), 2) AS Percentage
FROM student
GROUP BY parental_level_of_education, test_preparation_course
ORDER BY parental_level_of_education, test_preparation_course;
