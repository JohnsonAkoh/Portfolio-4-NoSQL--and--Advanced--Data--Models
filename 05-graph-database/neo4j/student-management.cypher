
// =====================================================
// MIVA MIT PORTFOLIO 4
// NEO4J GRAPH DATABASE IMPLEMENTATION
// CASE STUDY: STUDENT MANAGEMENT SYSTEM
// =====================================================

// 1. Create Department nodes
CREATE
  (cs:Department {department_id: 1, name: 'Computer Science'}),
  (it:Department {department_id: 2, name: 'Information Technology'});

// 2. Create Student nodes
CREATE
  (s1:Student {
    student_id: 'STU001',
    name: 'John Ade',
    email: 'john.ade@cu.edu.ng'
  }),
  (s2:Student {
    student_id: 'STU002',
    name: 'Mary Okafor',
    email: 'mary.okafor@example.com'
  });

// 3. Create Course nodes
CREATE
  (c1:Course {
    course_code: 'CSC401',
    title: 'Advanced Database Systems'
  }),
  (c2:Course {
    course_code: 'CSC402',
    title: 'Network Architecture'
  });

// 4. Create department relationships
MATCH (s1:Student {student_id: 'STU001'}),
      (cs:Department {department_id: 1})
CREATE (s1)-[:BELONGS_TO]->(cs);

MATCH (s2:Student {student_id: 'STU002'}),
      (it:Department {department_id: 2})
CREATE (s2)-[:BELONGS_TO]->(it);

// 5. Create student-course relationships
MATCH (s1:Student {student_id: 'STU001'}),
      (c1:Course {course_code: 'CSC401'})
CREATE (s1)-[:ENROLLED_IN {score: 85, grade: 'A'}]->(c1);

MATCH (s1:Student {student_id: 'STU001'}),
      (c2:Course {course_code: 'CSC402'})
CREATE (s1)-[:ENROLLED_IN {score: 78, grade: 'B'}]->(c2);

MATCH (s2:Student {student_id: 'STU002'}),
      (c1:Course {course_code: 'CSC401'})
CREATE (s2)-[:ENROLLED_IN {score: 91, grade: 'A'}]->(c1);

// 6. Retrieve all students and their departments
MATCH (s:Student)-[:BELONGS_TO]->(d:Department)
RETURN s, d;

// 7. Find courses taken by a student
MATCH (s:Student {student_id: 'STU001'})
      -[r:ENROLLED_IN]->(c:Course)
RETURN s.name, c.course_code, c.title, r.score, r.grade;

// 8. Display the complete graph
MATCH (n)
RETURN n;
