# Student Management System – Case Study

## Project Overview

This project uses the Student Management System developed in the previous MIVA MIT database portfolios as the foundation for exploring NoSQL and advanced data models.

## Core Entities

- Students
- Departments
- Lecturers
- Courses
- Semesters
- Course Offerings
- Enrollments
- Results

## Project Objective

To model and implement the Student Management System using four NoSQL database approaches:

1. Document database – MongoDB
2. Key-value database – Redis
3. Wide-column database – Apache Cassandra
4. Graph database – Neo4j

## Purpose

To demonstrate how different NoSQL data models store, retrieve, and manage student information, and explain the suitability of each model for specific application requirements.
# MIVA MIT Academic Portfolio 4

---

The selected technologies are:

1. MongoDB – Document Database.
2. Redis – Key-Value Database.
3. Apache Cassandra – Wide-Column Database.
4. Neo4j – Graph Database.

The project will use a consistent university information management environment to demonstrate the strengths, limitations and practical applications of each database model.

## 2. Project Aim

The primary aim of this project is to investigate and demonstrate the practical application of different NoSQL database models in managing structured, semi-structured and highly interconnected data within a university Student Management System.

## 3. Project Objectives

The specific objectives are to:

1. Understand the principles, characteristics and architecture of NoSQL databases.
2. Design a document-oriented data model for student profiles and academic records.
3. Implement a key-value data model for student sessions and course availability.
4. Design a wide-column data model for examination results and academic activities.
5. Implement a graph data model representing relationships between students, courses, lecturers and departments.
6. Execute practical database operations using MongoDB, Redis, Apache Cassandra and Neo4j.
7. Demonstrate data insertion, retrieval, modification and deletion where appropriate.
8. Examine how different NoSQL models support specific application requirements.
9. Compare the four database models based on their characteristics, advantages, limitations and suitability.
10. Recommend appropriate NoSQL technologies for different university information management scenarios.

## 4. Case Study: Student Management System

### 4.1 Background

The Student Management System represents a university information management environment responsible for managing student information, academic departments, lecturers, courses, semesters, enrolments, examination results and attendance records.

The system provides an opportunity to investigate how different database technologies can support the storage and management of university data.

Rather than implementing the entire application using one database technology, this project will demonstrate how different NoSQL databases can be applied to specific operational requirements.

### 4.2 Main Information Entities

The university environment consists of the following major entities:

| Entity             | Description                                             |
| ------------------ | ------------------------------------------------------- |
| Student            | Stores student identification and personal information. |
| Department         | Represents academic departments.                        |
| Lecturer           | Stores lecturer information.                            |
| Course             | Represents academic courses.                            |
| Semester           | Represents academic periods.                            |
| Enrolment          | Records students registered for courses.                |
| Examination Result | Stores student examination performance.                 |
| Attendance         | Records student participation in academic activities.   |
| Student Session    | Represents active student application sessions.         |

### 4.3 Application Requirements

The system is expected to support the following operations:

- Register and manage student profiles.
- Maintain department and lecturer information.
- Store available academic courses.
- Record student course enrolments.
- Retrieve examination results.
- Maintain attendance history.
- Manage student sessions.
- Identify relationships between students, courses, lecturers and departments.
- Retrieve academic information efficiently.

## 5. NoSQL Database Models and Technologies

This project implements four NoSQL database models.

### 5.1 Document Database – MongoDB

**Database Model:** Document-Oriented
**Technology:** MongoDB
**Primary Application:** Student Profiles and Enrolment Records.

MongoDB will be used to store student information as BSON documents. The document model allows related information to be embedded within a single document, making it suitable for managing student profiles and associated academic information.

**Planned implementation:**

- Create a student management database.
- Create collections for students and related academic information.
- Store student profiles as BSON documents.
- Embed department information.
- Store enrolment information using arrays.
- Insert student documents.
- Retrieve student information using queries.
- Update student profiles and enrolment records.
- Demonstrate document filtering and projection.

**Expected database operations:**

- Database and collection creation.
- Document insertion.
- Document retrieval.
- Document updates.
- Document deletion.
- Query filtering.

**Implementation directory:**

`02-document-database/mongodb/`

### 5.2 Key-Value Database – Redis

**Database Model:** Key-Value
**Technology:** Redis
**Primary Application:** Student Sessions and Course Availability.

Redis will be used to demonstrate a key-value storage model in which information is stored and retrieved through unique keys.

The technology is suitable for fast data access, temporary information storage, session management and caching.

**Planned implementation:**

- Create student identification keys.
- Store student session information.
- Store course availability values.
- Retrieve stored values using keys.
- Update student session information.
- Apply expiration times to temporary session data.
- Demonstrate key deletion and existence checks.

**Expected database operations:**

- SET and GET.
- MSET and MGET.
- EXISTS.
- EXPIRE and TTL.
- DEL.
- HSET and HGETALL where appropriate.

**Implementation directory:**

`03-key-value-database/redis/`

### 5.3 Wide-Column Database – Apache Cassandra

**Database Model:** Wide-Column
**Technology:** Apache Cassandra
**Primary Application:** Examination Results and Academic Activities.

Apache Cassandra will be used to demonstrate a distributed wide-column database model designed for scalability, availability and efficient query execution.

The implementation will focus on data modelling based on query requirements, partition keys and clustering columns.

**Planned implementation:**

- Create a Cassandra keyspace.
- Create tables for examination results.
- Design student-based result records.
- Organise examination records by semester and course.
- Define partition keys.
- Define clustering columns.
- Insert examination result records.
- Retrieve student examination results.
- Retrieve academic activity records.

**Expected database operations:**

- CREATE KEYSPACE.
- CREATE TABLE.
- INSERT.
- SELECT.
- UPDATE.
- DELETE.
- PRIMARY KEY definition.
- Partition and clustering key implementation.

**Implementation directory:**

`04-wide-column-database/cassandra/`

### 5.4 Graph Database – Neo4j

**Database Model:** Graph
**Technology:** Neo4j
**Primary Application:** University Entity Relationships.

Neo4j will be used to represent and manage relationships between students, courses, lecturers and departments.

The graph model will represent information through nodes, relationships and properties.

**Planned implementation:**

- Create student nodes.
- Create course nodes.
- Create lecturer nodes.
- Create department nodes.
- Establish relationships between students and courses.
- Establish relationships between lecturers and courses.
- Establish relationships between students and departments.
- Execute graph traversal queries.
- Retrieve interconnected university information.

**Expected relationships:**

| Relationship | Description                                    |
| ------------ | ---------------------------------------------- |
| ENROLLED_IN  | Connects students to courses.                  |
| TEACHES      | Connects lecturers to courses.                 |
| BELONGS_TO   | Connects students or lecturers to departments. |
| OFFERED_BY   | Connects courses to departments.               |

**Expected database operations:**

- CREATE.
- MATCH.
- MERGE.
- RETURN.
- SET.
- DELETE.
- Relationship traversal.

**Implementation directory:**

`05-graph-database/neo4j/`

## 6. Tools and Technologies

The following technologies and development tools will be used.

| Technology                     | Purpose                                                  |
| ------------------------------ | -------------------------------------------------------- |
| MongoDB                        | Document-oriented database implementation.               |
| MongoDB Compass                | Graphical interface for MongoDB database management.     |
| Redis                          | Key-value database implementation.                       |
| Redis Insight                  | Graphical interface for Redis monitoring and management. |
| Apache Cassandra               | Wide-column database implementation.                     |
| Cassandra Query Language (CQL) | Database definition and data manipulation.               |
| Neo4j                          | Graph database implementation.                           |
| Neo4j Browser                  | Graph database visualisation and query execution.        |
| Cypher                         | Graph database query language.                           |
| Visual Studio Code             | Development and script editing.                          |
| Git                            | Version control.                                         |
| GitHub                         | Source code hosting and project documentation.           |

## 7. Project Directory Structure

The repository is organised into directories representing the different stages of the project.

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

## 8. Implementation Methodology

The project will follow a practical, incremental implementation methodology.

Each database model will be designed and implemented independently using the same Student Management System case study.

The implementation will follow these stages:

### Stage 1: Data Model Design

- Review the Student Management System requirements.
- Identify the information to be stored.
- Determine the appropriate NoSQL model for each application requirement.
- Document the data structures and access patterns.
- Compare the four database models.

### Stage 2: MongoDB Implementation

- Create the database and collections.
- Design student BSON documents.
- Insert sample student records.
- Execute retrieval and update queries.
- Capture implementation evidence.

### Stage 3: Redis Implementation

- Create student identification keys.
- Store session information.
- Store course availability values.
- Execute key retrieval and update commands.
- Demonstrate key expiration.
- Capture implementation evidence.

### Stage 4: Apache Cassandra Implementation

- Create the keyspace.
- Design tables according to expected queries.
- Define partition and clustering keys.
- Insert examination results.
- Execute retrieval queries.
- Capture implementation evidence.

### Stage 5: Neo4j Implementation

- Create university entity nodes.
- Establish relationships between nodes.
- Execute Cypher queries.
- Demonstrate graph traversal.
- Capture implementation evidence.

### Stage 6: Comparative Analysis

- Compare the four database models.
- Examine their advantages and limitations.
- Evaluate their scalability and query capabilities.
- Assess their suitability for university information management.
- Provide technology selection recommendations.

### Stage 7: Documentation and Reporting

- Organise implementation scripts.
- Include screenshots and execution evidence.
- Document the practical procedures.
- Prepare the final academic report.
- Review the completed GitHub repository.

## 9. Comparative Overview of NoSQL Models

The following table provides an initial comparison of the four database models.

| Feature             | MongoDB                        | Redis                          | Cassandra               | Neo4j                    |
| ------------------- | ------------------------------ | ------------------------------ | ----------------------- | ------------------------ |
| Data Model          | Document                       | Key-Value                      | Wide-Column             | Graph                    |
| Data Structure      | BSON Documents                 | Keys and Values                | Rows and Columns        | Nodes and Relationships  |
| Primary Strength    | Flexible document storage      | Fast data access               | Distributed scalability | Relationship traversal   |
| Query Approach      | MongoDB Query Language         | Redis Commands                 | CQL                     | Cypher                   |
| Project Application | Student profiles               | Student sessions               | Examination results     | University relationships |
| Typical Use Case    | Content and profile management | Caching and session management | Large-scale event data  | Relationship analysis    |

A more detailed technical and suitability analysis will be provided in the `06-model-comparison/` directory.

## 10. Expected Deliverables

The completed project will produce the following deliverables:

1. NoSQL data model designs based on the Student Management System.
2. MongoDB document database implementation.
3. Redis key-value database implementation.
4. Apache Cassandra wide-column database implementation.
5. Neo4j graph database implementation.
6. Native query examples for each database technology.
7. Practical implementation screenshots and execution evidence.
8. Comparative analysis of the four NoSQL models.
9. Recommendations for university information management.
10. Final academic project report.

## 11. Expected Learning Outcomes

At the completion of this project, the following knowledge and practical competencies are expected to be developed:

- Understanding NoSQL database architecture.
- Designing document-oriented data structures.
- Implementing key-value storage systems.
- Designing wide-column databases.
- Understanding partition keys and clustering columns.
- Modelling relationships using graph databases.
- Executing database operations using native query languages.
- Evaluating database performance characteristics and scalability.
- Selecting appropriate database technologies based on application requirements.
- Documenting practical database implementations professionally.

## 12. Evidence and Documentation

Practical implementation evidence will be maintained in:

`07-evidence/screenshots/`

Screenshots will demonstrate:

- Successful database creation.
- Collection and table creation.
- Sample data insertion.
- Successful query execution.
- Data retrieval and modification.
- Redis key expiration.
- Cassandra partition and clustering key structures.
- Neo4j node and relationship visualisation.

Each screenshot will be accompanied by a brief explanation describing the operation performed and its relevance to the project.

Only actual implementation results will be presented as evidence.

## 13. Project Status

**Current Status:** In Progress

| Project Component               | Status    |
| ------------------------------- | --------- |
| Project overview and objectives | Completed |
| Repository structure            | Defined   |
| Data model design               | Pending   |
| MongoDB implementation          | Pending   |
| Redis implementation            | Pending   |
| Cassandra implementation        | Pending   |
| Neo4j implementation            | Pending   |
| Comparative analysis            | Pending   |
| Practical evidence              | Pending   |
| Final academic report           | Pending   |

The status of each component will be updated as implementation progresses.

## 14. Academic Integrity and Implementation Approach

This project is intended to demonstrate independent academic understanding and practical application of NoSQL database technologies.

All database scripts, sample records, queries and implementation evidence will be documented according to their actual execution results.

The project will maintain consistency with the Student Management System case study used in the previous academic portfolios.

Explanations and comparisons will be based on database architecture, data modelling principles, practical observations and relevant technical documentation.

## 15. References and Technical Documentation

The following official documentation resources will support the implementation and technical explanations.

**MongoDB**

- [https://www.mongodb.com/docs/](https://www.mongodb.com/docs/)

**Redis**

- [https://redis.io/docs/latest/](https://redis.io/docs/latest/)

**Apache Cassandra**

- [https://cassandra.apache.org/doc/latest/](https://cassandra.apache.org/doc/latest/)

**Neo4j**

- [https://neo4j.com/docs/](https://neo4j.com/docs/)

**Git and GitHub**

- [https://git-scm.com/doc](https://git-scm.com/doc)
- [https://docs.github.com/](https://docs.github.com/)

These resources will be consulted during implementation and used to support relevant technical discussions in the final report.

## 16. Conclusion

This project investigates the practical application of four major NoSQL database models within a university Student Management System.

By implementing MongoDB, Redis, Apache Cassandra and Neo4j, the project will demonstrate how different database technologies address different information management requirements.

The implementation will provide practical experience in document storage, key-value retrieval, distributed wide-column data management and graph-based relationship modelling.

Ultimately, the project aims to establish a clear understanding of how NoSQL technologies can complement traditional relational database systems and support modern, scalable university information management solutions.

---

**Academic Portfolio:** MIVA MIT – Portfolio 4
**Project Title:** NoSQL and Advanced Data Models
**Case Study:** Student Management System
**Programme:** Master in Information Technology
**Specialisation:** Information Technology Management
**Repository:** `nosql-and-advanced-data-models`
**Status:** In Progress

