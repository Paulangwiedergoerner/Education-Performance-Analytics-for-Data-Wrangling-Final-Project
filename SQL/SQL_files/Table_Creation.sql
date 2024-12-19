USE student_data;

-- Step 1: Create the main student table
CREATE TABLE student (
    roll_no VARCHAR(20) PRIMARY KEY,
    gender VARCHAR(10),
    race_ethnicity VARCHAR(20),
    parental_level_of_education VARCHAR(50),
    test_preparation_course VARCHAR(10),
    score_id INT UNIQUE, 
    grade_id INT UNIQUE
);

-- Step 2: Create the performance table (scores for each student)
CREATE TABLE performance (
    score_id INT AUTO_INCREMENT PRIMARY KEY,
    roll_no VARCHAR(20) NOT NULL,
    math_score INT,
    reading_score INT,
    writing_score INT,
    science_score INT,
    total_score INT
);

-- Step 3: Create the subject_grades table (grades for each student)
CREATE TABLE subject_grades (
    grade_id INT AUTO_INCREMENT PRIMARY KEY,
    roll_no VARCHAR(20) NOT NULL,
    math_grade VARCHAR(5),
    reading_grade VARCHAR(5),
    writing_grade VARCHAR(5),
    science_grade VARCHAR(5),
    overall_grade VARCHAR(5)
);

-- Step 4: Add foreign keys to student table to link to performance and subject_grades
ALTER TABLE student
ADD CONSTRAINT fk_score_id FOREIGN KEY (score_id) REFERENCES performance(score_id) ON DELETE SET NULL,
ADD CONSTRAINT fk_grade_id FOREIGN KEY (grade_id) REFERENCES subject_grades(grade_id) ON DELETE SET NULL;



SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE student;
DROP TABLE performance;
DROP TABLE subject_grades;
SET FOREIGN_KEY_CHECKS = 1;
