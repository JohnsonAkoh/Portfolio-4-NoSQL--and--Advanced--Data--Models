# NoSQL Data Model Comparison

## Introduction

NoSQL databases provide different approaches to storing and managing data. This project examines four major NoSQL models using the Student Management System case study.

## 1. Document Database – MongoDB

**Data structure:** JSON-like documents.

**Example:** A student document containing personal details, department information, and enrolled courses.

**Suitability:** Useful for flexible student records and nested information.

## 2. Key-Value Database – Redis

**Data structure:** Unique keys mapped to values.

**Example:** `student:STU001:status` mapped to `Active`.

**Suitability:** Useful for caching, session management, and fast access to frequently requested information.

## 3. Wide-Column Database – Apache Cassandra

**Data structure:** Rows organised into partitions and columns.

**Example:** Student examination results organised by student ID, semester, and course code.

**Suitability:** Useful for large-scale data storage, high availability, and distributed access.

## 4. Graph Database – Neo4j

**Data structure:** Nodes, relationships, and properties.

**Example:** A Student node connected to Course and Department nodes.

**Suitability:** Useful for analysing relationships between students, courses, departments, and lecturers.

## Summary Comparison

| Database | Model | Main Use |
|---|---|---|
| MongoDB | Document | Flexible student records |
| Redis | Key-Value | Fast lookup and caching |
| Cassandra | Wide-Column | Large-scale results storage |
| Neo4j | Graph | Relationship analysis |

## Conclusion

Each NoSQL database model provides different strengths. Selecting the appropriate model depends on the application's data structure, access patterns, scalability, and operational requirements.
