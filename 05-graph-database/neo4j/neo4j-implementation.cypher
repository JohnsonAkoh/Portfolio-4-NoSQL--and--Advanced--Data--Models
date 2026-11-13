
// =====================================================
// MIVA MIT PORTFOLIO 4
// STUDENT MANAGEMENT SYSTEM
// GRAPH DATABASE IMPLEMENTATION - NEO4J
// =====================================================

// 1. CREATE UNIQUENESS CONSTRAINTS

CREATE CONSTRAINT student_id_unique IF NOT EXISTS
FOR (s:Student)
REQUIRE s.student_id IS UNIQUE;

CREATE CONSTRAINT department_id_unique IF NOT EXISTS
FOR (d:Department)
REQUIRE d.department_id IS UNIQUE;

CREATE CONSTRAINT course_code_unique IF NOT EXISTS
FOR (c:Course)
REQUIRE c.course_code IS UNIQUE;


// 2. CREATE DEPARTMENTS

MERGE (cs:Department {department_id: 1})
SET cs.department_name = 'Computer Science';

MERGE (math:Department {department_id: 2})
SET math.department_name = 'Mathematics';


// 3. CREATE STUDENTS

MERGE (john:Student {student_id: 1001})
SET john.student_name = 'John Ade',
    john.email = 'john.ade@example.com';

MERGE (mary:Student {student_id: 1002})
SET mary.student_name = 'Mary James',
    mary.email = 'mary.james@example.com';

MERGE (david:Student {student_id: 1003})
SET david.student_name = 'David Okoro',
    david.email = 'david.okoro@example.com';


// 4. CREATE COURSES

MERGE (csc401:Course {course_code: 'CSC401'})
SET csc401.course_title = 'Advanced Database Systems',
    csc401.credit_unit = 3;

MERGE (csc402:Course {course_code: 'CSC402'})
SET csc402.course_title = 'Network Architecture and Protocols',
    csc402.credit_unit = 3;

MERGE (mth401:Course {course_code: 'MTH401'})
SET mth401.course_title = 'Advanced Mathematics',
    mth401.credit_unit = 3;


// 5. CREATE DEPARTMENT RELATIONSHIPS

MATCH (john:Student {student_id: 1001}),
      (mary:Student {student_id: 1002}),
      (david:Student {student_id: 1003}),
      (cs:Department {department_id: 1}),
      (math:Department {department_id: 2})

MERGE (john)-[:BELONGS_TO]->(cs)
MERGE (mary)-[:BELONGS_TO]->(cs)
MERGE (david)-[:BELONGS_TO]->(math);


// 6. CREATE COURSE ENROLMENT RELATIONSHIPS

MATCH (john:Student {student_id: 1001}),
      (mary:Student {student_id: 1002}),
      (david:Student {student_id: 1003}),
      (csc401:Course {course_code: 'CSC401'}),
      (csc402:Course {course_code: 'CSC402'}),
      (mth401:Course {course_code: 'MTH401'})

MERGE (john)-[r1:ENROLLED_IN {academic_session: '2025/2026'}]->(csc401)
SET r1.score = 86, r1.grade = 'A'

MERGE (john)-[r2:ENROLLED_IN {academic_session: '2025/2026'}]->(csc402)
SET r2.score = 78, r2.grade = 'B'

MERGE (mary)-[r3:ENROLLED_IN {academic_session: '2025/2026'}]->(csc401)
SET r3.score = 92, r3.grade = 'A'

MERGE (mary)-[r4:ENROLLED_IN {academic_session: '2025/2026'}]->(csc402)
SET r4.score = 88, r4.grade = 'A'

MERGE (david)-[r5:ENROLLED_IN {academic_session: '2025/2026'}]->(mth401)
SET r5.score = 73, r5.grade = 'B';


// 7. VERIFY NODE COUNTS

MATCH (n)
RETURN labels(n) AS node_type, count(n) AS total
ORDER BY node_type;


// 8. VERIFY RELATIONSHIP COUNTS

MATCH ()-[r]->()
RETURN type(r) AS relationship_type, count(r) AS total
ORDER BY relationship_type;


// 9. DISPLAY ALL STUDENTS AND DEPARTMENTS

MATCH (s:Student)-[:BELONGS_TO]->(d:Department)
RETURN s, d;


// 10. DISPLAY ALL COURSE ENROLMENTS

MATCH (s:Student)-[r:ENROLLED_IN]->(c:Course)
RETURN s, r, c;


// 11. DISPLAY COMPLETE GRAPH

MATCH (n)-[r]->(m)
RETURN n, r, m;

