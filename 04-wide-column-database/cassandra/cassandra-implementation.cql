
-- =====================================================
-- MIVA MIT PORTFOLIO 4
-- WIDE-COLUMN DATABASE IMPLEMENTATION
-- Database: Student Management System
-- Technology: Apache Cassandra 5.0
-- =====================================================

-- 1. CREATE KEYSPACE
CREATE KEYSPACE IF NOT EXISTS student_management
WITH replication = {
    'class': 'SimpleStrategy',
    'replication_factor': 1
};

USE student_management;

-- 2. CREATE TABLE
CREATE TABLE IF NOT EXISTS examination_results (
    department_id INT,
    academic_session TEXT,
    student_id INT,
    student_name TEXT,
    course_code TEXT,
    score DECIMAL,
    grade TEXT,
    PRIMARY KEY (
        (department_id, academic_session),
        student_id,
        course_code
    )
);

-- 3. INSERT SAMPLE STUDENT RECORDS

INSERT INTO examination_results
(department_id, academic_session, student_id, student_name, course_code, score, grade)
VALUES (1, '2025/2026', 1001, 'John Ade', 'CSC401', 86, 'A');

INSERT INTO examination_results
(department_id, academic_session, student_id, student_name, course_code, score, grade)
VALUES (1, '2025/2026', 1001, 'John Ade', 'CSC402', 78, 'B');

INSERT INTO examination_results
(department_id, academic_session, student_id, student_name, course_code, score, grade)
VALUES (1, '2025/2026', 1002, 'Mary James', 'CSC401', 92, 'A');

INSERT INTO examination_results
(department_id, academic_session, student_id, student_name, course_code, score, grade)
VALUES (1, '2025/2026', 1002, 'Mary James', 'CSC402', 88, 'A');

INSERT INTO examination_results
(department_id, academic_session, student_id, student_name, course_code, score, grade)
VALUES (2, '2025/2026', 1003, 'David Okoro', 'MTH401', 73, 'B');

-- 4. RETRIEVE ALL EXAMINATION RECORDS
SELECT * FROM examination_results;

-- 5. QUERY BY DEPARTMENT AND SESSION
SELECT * FROM examination_results
WHERE department_id = 1
AND academic_session = '2025/2026';

-- 6. QUERY BY STUDENT
SELECT * FROM examination_results
WHERE department_id = 1
AND academic_session = '2025/2026'
AND student_id = 1001;

-- 7. QUERY BY STUDENT AND COURSE
SELECT * FROM examination_results
WHERE department_id = 1
AND academic_session = '2025/2026'
AND student_id = 1001
AND course_code = 'CSC401';

-- 8. UPDATE STUDENT EXAMINATION SCORE
UPDATE examination_results
SET score = 86
WHERE department_id = 1
AND academic_session = '2025/2026'
AND student_id = 1001
AND course_code = 'CSC401';

-- 9. VERIFY UPDATED SCORE
SELECT score FROM examination_results
WHERE department_id = 1
AND academic_session = '2025/2026'
AND student_id = 1001
AND course_code = 'CSC401';

-- 10. INSERT TEMPORARY TEST RECORD
INSERT INTO examination_results
(department_id, academic_session, student_id, student_name, course_code, score, grade)
VALUES (1, '2025/2026', 1099, 'Portfolio Test Student', 'CSC499', 60, 'C');

-- 11. DELETE TEMPORARY TEST RECORD
DELETE FROM examination_results
WHERE department_id = 1
AND academic_session = '2025/2026'
AND student_id = 1099
AND course_code = 'CSC499';

-- 12. VERIFY DELETION
SELECT * FROM examination_results
WHERE department_id = 1
AND academic_session = '2025/2026'
AND student_id = 1099
AND course_code = 'CSC499';

-- =====================================================
-- END OF CASSANDRA IMPLEMENTATION
-- =====================================================

