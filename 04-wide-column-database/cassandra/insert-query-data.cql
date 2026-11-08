
-- =====================================================
-- MIVA MIT PORTFOLIO 4
-- CASSANDRA SAMPLE DATA AND QUERIES
-- =====================================================

USE student_management_nosql;

-- 1. Insert student examination results
INSERT INTO results_by_student (
    student_id,
    semester,
    course_code,
    course_title,
    score,
    grade
)
VALUES (
    'STU001',
    '2026 First Semester',
    'CSC401',
    'Advanced Database Systems',
    85,
    'A'
);

INSERT INTO results_by_student (
    student_id,
    semester,
    course_code,
    course_title,
    score,
    grade
)
VALUES (
    'STU001',
    '2026 First Semester',
    'CSC402',
    'Network Architecture',
    78,
    'B'
);

INSERT INTO results_by_student (
    student_id,
    semester,
    course_code,
    course_title,
    score,
    grade
)
VALUES (
    'STU002',
    '2026 First Semester',
    'CSC401',
    'Advanced Database Systems',
    91,
    'A'
);

-- 2. Insert student department records
INSERT INTO students_by_department (
    department_name,
    student_id,
    student_name,
    email,
    enrollment_status
)
VALUES (
    'Computer Science',
    'STU001',
    'John Ade',
    'john.ade@example.com',
    'Active'
);

INSERT INTO students_by_department (
    department_name,
    student_id,
    student_name,
    email,
    enrollment_status
)
VALUES (
    'Information Technology',
    'STU002',
    'Mary Okafor',
    'mary.okafor@example.com',
    'Active'
);

-- 3. Retrieve results for a student
SELECT *
FROM results_by_student
WHERE student_id = 'STU001';

-- 4. Retrieve students in a department
SELECT *
FROM students_by_department
WHERE department_name = 'Computer Science';

-- 5. Retrieve a specific course result
SELECT *
FROM results_by_student
WHERE student_id = 'STU001'
AND semester = '2026 First Semester'
AND course_code = 'CSC401';
