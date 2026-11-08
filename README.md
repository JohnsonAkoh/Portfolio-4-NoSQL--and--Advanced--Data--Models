# Portfolio-4-NoSQL-and-Advanced--Data--Models
MIVA MIT Academic Portfolio 4 – NoSQL and Advanced Data Models using a Student Management System case study.
## NoSQL and Advanced Data Models

**Case Study:** University Student Management System  
**Programme:** Master in Information Technology (MIT)  
**Specialisation:** Information Technology Management  
**Database Technologies:** MongoDB, Redis, Apache Cassandra and Neo4j  

---

## 1. Project Overview

This project explores the design, implementation and application of NoSQL databases and advanced data models using a Student Management System as the case study.

The project builds on the relational database design, query optimisation, and transaction management exercises completed in the previous academic portfolios.

Four major NoSQL data models will be implemented to demonstrate how different database technologies organise, store, retrieve and manage data.

The project will examine the suitability of each model for different university information management requirements.

## 2. Project Objectives

The objectives are to:

1. Understand the principles and architecture of NoSQL databases.
2. Design a document-oriented model for student academic records.
3. Implement a key-value model for student sessions and course availability.
4. Design a wide-column model for examination results and academic activities.
5. Implement a graph model to represent relationships between students, courses, lecturers and departments.
6. Execute practical database operations using each technology.
7. Compare the four NoSQL models based on their characteristics, advantages, limitations and suitability.
8. Recommend appropriate NoSQL technologies for different university information management scenarios.

## 3. Tools and Technologies

| Database Model | Technology | Primary Application |
|---|---|---|
| Document | MongoDB | Student profiles and enrolment records |
| Key-value | Redis | Student sessions and course availability |
| Wide-column | Apache Cassandra | Examination results and attendance history |
| Graph | Neo4j | Student, lecturer, course and department relationships |

Additional tools:

- MongoDB Compass
- Redis Insight
- Cassandra Query Language (CQL)
- Neo4j Browser / Cypher
- Visual Studio Code
- Git and GitHub

## 4. Case Study: Student Management System

The Student Management System represents a university information management environment involving students, departments, lecturers, courses, semesters, course offerings, enrolments and examination results.

The same case study used in the previous database portfolios will be maintained to ensure consistency across the academic projects.

The NoSQL implementation will demonstrate how different database models can support specific requirements within the same university environment.

## 5. NoSQL Implementation

### 5.1 Document Database – MongoDB

The document database will represent student profiles and academic information using BSON documents.

Planned implementation:
- Student profile documents.
- Embedded department information.
- Enrolment records and arrays.
- Document insertion, retrieval and update operations.

### 5.2 Key-Value Database – Redis

The key-value model will represent student sessions, student status and course availability.

Planned implementation:
- Student identification keys.
- Student session data.
- Course availability values.
- Key retrieval, update and expiration operations.

### 5.3 Wide-Column Database – Apache Cassandra

The wide-column model will represent examination results and academic activity records.

Planned implementation:
- Student-based result records.
- Semester and course information.
- Partition keys and clustering columns.
- Data insertion and query operations.

### 5.4 Graph Database – Neo4j

The graph model will represent relationships within the university environment.

Planned implementation:
- Student nodes.
- Course nodes.
- Lecturer nodes.
- Department nodes.
- Relationships such as ENROLLED_IN, TEACHES and BELONGS_TO.
- Graph traversal and relationship queries.

## 6. Project Structure

```text
nosql-and-advanced-data-models/
│
├── README.md
│
├── 01-data-model-design/
│   ├── case-study.md
│   └── nosql-model-comparison.md
│
├── 02-document-database/
│   └── mongodb/
│       ├── student-documents.json
│       └── student-queries.js
│
├── 03-key-value-database/
│   └── redis/
│       └── student-key-value.txt
│
├── 04-wide-column-database/
│   └── cassandra/
│       ├── create-tables.cql
│       └── insert-query-data.cql
│
├── 05-graph-database/
│   └── neo4j/
│       └── student-management.cypher
│
├── 06-model-comparison/
│   └── suitability-analysis.md
│
└── 07-evidence/
    └── screenshots/
```

## 7. Expected Deliverables

At the completion of this project, the following deliverables will be available:

1. NoSQL data model designs based on the Student Management System.
2. Document database implementation using MongoDB.
3. Key-value database implementation using Redis.
4. Wide-column database implementation using Apache Cassandra.
5. Graph database implementation using Neo4j.
6. SQL-like and native query examples for each database technology.
7. Practical implementation screenshots and evidence.
8. Comparative analysis of the four NoSQL data models.
9. Explanation of the suitability of each model for university information management.
10. Final academic project report.

## 8. Expected Learning Outcomes

This project is expected to develop practical knowledge and skills in:

- NoSQL database architecture and data modelling.
- Document-oriented database design.
- Key-value data storage and retrieval.
- Wide-column database design.
- Graph database modelling and traversal.
- Database technology evaluation and selection.
- Practical database implementation and documentation.

## 9. Conclusion

The project will demonstrate how different NoSQL data models can address different data management requirements within a university information system.

By implementing MongoDB, Redis, Apache Cassandra and Neo4j, the project will provide practical experience in selecting and applying appropriate database technologies according to data structure, access patterns and application requirements.

---

**Academic Portfolio:** MIVA MIT – Portfolio 4  
**Project Case Study:** Student Management System  
**GitHub Repository:** `nosql-and-advanced-data-models`
