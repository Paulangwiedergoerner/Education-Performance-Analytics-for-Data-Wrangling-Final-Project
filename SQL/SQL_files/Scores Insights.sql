-- Average scores for each subject
SELECT 
    ROUND(AVG(sc.math_score), 2) AS AvgMathScore,
    ROUND(AVG(sc.reading_score), 2) AS AvgReadingScore,
    ROUND(AVG(sc.writing_score), 2) AS AvgWritingScore,
    ROUND(AVG(sc.science_score), 2) AS AvgScienceScore
FROM student_scores AS sc;

-- Top 5 students by total score
SELECT s.roll_no, s.gender, sc.total_score
FROM students AS s
JOIN student_scores AS sc ON s.roll_no = sc.roll_no
ORDER BY sc.total_score DESC
LIMIT 5;

-- Students scoring above 90 in any subject
SELECT s.roll_no, s.gender, sc.math_score, sc.reading_score, sc.writing_score, sc.science_score
FROM students AS s
JOIN student_scores AS sc ON s.roll_no = sc.roll_no
WHERE sc.math_score > 90 OR sc.reading_score > 90 OR sc.writing_score > 90 OR sc.science_score > 90;

-- Students scoring below 60 in any subject
SELECT s.roll_no, s.gender, sc.math_score, sc.reading_score, sc.writing_score, sc.science_score
FROM students AS s
JOIN student_scores AS sc ON s.roll_no = sc.roll_no
WHERE sc.math_score < 60 OR sc.reading_score < 60 OR sc.writing_score < 60 OR sc.science_score < 60;

-- Top 5 students by science score
SELECT s.roll_no, s.gender, sc.science_score
FROM students AS s
JOIN student_scores AS sc ON s.roll_no = sc.roll_no
ORDER BY sc.science_score DESC
LIMIT 5;

-- Top 5 students by Math score
SELECT s.roll_no, s.gender, sc.math_score
FROM students AS s
JOIN student_scores AS sc ON s.roll_no = sc.roll_no
ORDER BY sc.math_score DESC
LIMIT 5;
