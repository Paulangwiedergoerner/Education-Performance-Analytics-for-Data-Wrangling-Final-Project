-- Insert data into student table
INSERT INTO student (roll_no, gender, race_ethnicity, parental_level_of_education, test_preparation_course)
SELECT DISTINCT roll_no, gender, race_ethnicity, parental_level_of_education, test_preparation_course
FROM cleaned_student_performance;

-- Insert data into performance table
INSERT INTO performance (roll_no, math_score, reading_score, writing_score, science_score, total_score)
SELECT roll_no, math_score, reading_score, writing_score, science_score, total_score
FROM cleaned_student_performance;

-- Insert data into subject_grades table
INSERT INTO subject_grades (roll_no, math_grade, reading_grade, writing_grade, science_grade, overall_grade)
SELECT roll_no, math_grade, reading_grade, writing_grade, science_grade, grade
FROM cleaned_student_performance;
