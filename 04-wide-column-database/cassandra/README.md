# Apache Cassandra – Wide-Column Database Implementation

## MIVA MIT Portfolio 4: NoSQL and Advanced Data Models

### 1. Project Overview

This project demonstrates the implementation of an Apache Cassandra wide-column database using the Student Management System case study.

Apache Cassandra is a distributed NoSQL database designed to handle large volumes of structured and semi-structured data across multiple servers.

The implementation focuses on storing and retrieving student examination results efficiently.

### 2. Technology Used

- Database: Apache Cassandra
- Version: Cassandra 5.0.9
- Query Language: Cassandra Query Language (CQL)
- Deployment: Docker Desktop
- Operating System: Windows 11
- Case Study: Student Management System

### 3. Database Design

**Keyspace:** `student_management`

**Table:** `examination_results`

The table stores student examination information, including:

- Department ID
- Academic session
- Student ID
- Student name
- Course code
- Examination score
- Grade

### 4. Wide-Column Data Model

The table uses a composite partition key and clustering columns.

**Primary Key Structure:**

`PRIMARY KEY ((department_id, academic_session), student_id, course_code)`

- Partition key: `department_id`, `academic_session`
- Clustering columns: `student_id`, `course_code`

The partition key determines how records are grouped and distributed. The clustering columns organise records within each partition.

This design supports efficient retrieval of examination results by department, academic session, student and course.

### 5. Implementation Activities

The following operations were successfully implemented and tested:

1. Creation of the Cassandra keyspace.
2. Creation of the examination results table.
3. Insertion of five student examination records.
4. Retrieval of all examination records.
5. Retrieval of results by department and academic session.
6. Retrieval of results by student ID.
7. Retrieval of a specific student's course result.
8. Updating an examination score.
9. Insertion and deletion of a temporary test record.
10. Verification of the update and deletion operations.

### 6. Sample Implementation Results

Five examination records were inserted successfully.

| Student | Course | Score | Grade |
|---|---|---:|---|
| John Ade | CSC401 | 86 | A |
| John Ade | CSC402 | 78 | B |
| Mary James | CSC401 | 92 | A |
| Mary James | CSC402 | 88 | A |
| David Okoro | MTH401 | 73 | B |

The examination score for John Ade in CSC401 was updated from 85 to 86 and successfully verified.

A temporary test record was also inserted, retrieved and deleted. The deletion was confirmed by a query returning zero rows.

### 7. Suitability of Cassandra for Student Management

Cassandra is suitable for student examination records where an institution needs to manage large volumes of academic data and support high-volume queries.

Its advantages include:

- Horizontal scalability across multiple servers.
- High availability through distributed architecture.
- Efficient retrieval when queries follow the partition-key design.
- Ability to handle large volumes of examination records.
- Flexible schema design for evolving academic data requirements.

### 8. Limitations

Cassandra also has some limitations:

- It does not provide traditional relational joins.
- Data modelling is query-driven.
- It is not designed for complex relational transactions.
- Poor partition-key selection can create performance problems.
- Maintaining multiple copies of related data may be necessary to support different query patterns.

### 9. Conclusion

The Cassandra implementation demonstrates how a wide-column NoSQL database can support student examination record management.

The practical exercise successfully demonstrated database creation, data insertion, retrieval, updating and deletion.

The project also illustrates the importance of partition keys and clustering columns in designing efficient Cassandra data models.

### 10. Project Files

- `cassandra-implementation.cql` – Complete Cassandra database implementation script.
- `README.md` – Technical documentation and explanation of the wide-column database implementation.

### 11. Evidence

Screenshots of the Cassandra implementation and query results will be stored in the main Portfolio 4 evidence folder.
