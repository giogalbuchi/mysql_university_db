USE test_university_schema;

-- FINDING PROFESSOR AVERAGE:
SELECT grade_professor_id, AVG(grade_value) AS average_grade
FROM grades GROUP BY grade_professor_id;

-- FINDING TOP GRADE BY EACH STUDENT:
SELECT grade_student_id, MAX(grade_value) AS Top_grade
FROM grades GROUP BY grade_student_id;

-- GROUP STUDENTS BY CLASS:
SELECT grade_course_id, COUNT(grade_student_id) AS students
FROM grades GROUP BY grade_course_id;

-- HARDEST TO EASIEST COURSE:
SELECT grade_course_id, AVG(grade_value) AS average_grade
FROM grades GROUP BY grade_course_id
ORDER BY average_grade ASC;

-- FIND PROFESSOR AND STUDENT WITH MOST SHARED COURSES
SELECT grade_professor_id, COUNT(grade_course_id), grade_student_id
FROM grades g
GROUP BY grade_student_id, grade_professor_id
ORDER BY COUNT(grade_course_id) DESC;









