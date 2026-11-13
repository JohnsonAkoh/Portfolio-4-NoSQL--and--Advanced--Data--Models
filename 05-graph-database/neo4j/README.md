# Neo4j Graph Database Implementation

## 1. Overview

This project implements a Graph Database model for the Student Management System developed as part of MIVA Open University's Master in Information Technology (MIT), Portfolio 4: NoSQL and Advanced Data Models.

The implementation uses **Neo4j Community Edition 5** and the Cypher Query Language (Cypher) to represent students, departments, courses and their relationships.

Unlike relational databases that organise information into tables, Neo4j stores information as nodes, relationships and properties. This makes it suitable for representing and querying connected academic data.

## 2. Technology Stack

| Component | Technology |
|---|---|
| Graph Database | Neo4j Community Edition 5 |
| Query Language | Cypher |
| Container Platform | Docker Desktop |
| Operating System | Windows 11 |
| Database Browser | Neo4j Browser |
| Implementation Language | Cypher |

## 3. Graph Data Model

The Student Management System uses three main node labels and two relationship types.

### Node Labels

| Node | Description | Key Property |
|---|---|---|
| Student | Stores student information | student_id |
| Department | Stores academic department information | department_id |
| Course | Stores course information | course_code |

### Node Properties

**Student**
- student_id
- student_name
- email

**Department**
- department_id
- department_name

**Course**
- course_code
- course_title
- credit_unit

### Relationship Types

| Relationship | Direction | Description |
|---|---|---|
| BELONGS_TO | Student → Department | Connects each student to their department |
| ENROLLED_IN | Student → Course | Connects students to courses they register for |

The ENROLLED_IN relationship stores additional properties:
- academic_session
- score
- grade

## 4. Graph Structure

The logical graph model is represented below:

```text
(Student)
   |
   | BELONGS_TO
   v
(Department)

(Student)
   |
   | ENROLLED_IN
   v
(Course)
```

A student can belong to one department and enrol in multiple courses. A course can also have multiple students enrolled in it.

## 5. Implementation Details

The implementation followed these stages:

1. Installed Neo4j Community Edition 5 using Docker Desktop.
2. Created and started the Neo4j container.
3. Connected to the database through Neo4j Browser.
4. Created uniqueness constraints for student IDs, department IDs and course codes.
5. Created Student, Department and Course nodes.
6. Established BELONGS_TO relationships.
7. Established ENROLLED_IN relationships.
8. Stored academic session, scores and grades as relationship properties.
9. Executed verification queries.
10. Generated a graphical representation of the database.

The Cypher implementation is available in `neo4j-implementation.cypher`.

## 6. Sample Implementation Records

### Students

| Student ID | Student Name | Department |
|---|---|---|
| 1001 | John Ade | Computer Science |
| 1002 | Mary James | Computer Science |
| 1003 | David Okoro | Mathematics |

### Courses

| Course Code | Course Title |
|---|---|
| CSC401 | Advanced Database Systems |
| CSC402 | Network Architecture and Protocols |
| MTH401 | Advanced Mathematics |

### Course Enrolments

| Student | Course | Session | Score | Grade |
|---|---|---|---:|---|
| John Ade | CSC401 | 2025/2026 | 86 | A |
| John Ade | CSC402 | 2025/2026 | 78 | B |
| Mary James | CSC401 | 2025/2026 | 92 | A |
| Mary James | CSC402 | 2025/2026 | 88 | A |
| David Okoro | MTH401 | 2025/2026 | 73 | B |

## 7. Verification Results

The implementation was tested using Cypher queries to verify the graph structure and relationships.

Expected verified structure:

| Component
