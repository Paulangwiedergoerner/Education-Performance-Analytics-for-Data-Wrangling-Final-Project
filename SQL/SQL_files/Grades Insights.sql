-- Total students grouped by grade
SELECT sg.overall_grade, COUNT(*) AS TotalStudents
FROM subject_grades AS sg
GROUP BY sg.overall_grade
ORDER BY TotalStudents DESC;

-- Average total score by grade
SELECT sg.overall_grade, ROUND(AVG(sc.total_score), 2) AS AvgTotalScore
FROM subject_grades AS sg
JOIN performance AS sc ON sg.roll_no = sc.roll_no
GROUP BY sg.overall_grade
ORDER BY AvgTotalScore DESC;

-- Top 10 students with grades A and their total scores
SELECT sg.roll_no, sg.overall_grade, sc.total_score
FROM subject_grades AS sg
JOIN performance AS sc ON sg.roll_no = sc.roll_no
WHERE sg.overall_grade = 'A'
ORDER BY sc.total_score DESC
LIMIT 10;
