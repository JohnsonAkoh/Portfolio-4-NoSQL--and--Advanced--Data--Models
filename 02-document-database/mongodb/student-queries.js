// MIVA MIT Portfolio 4
// MongoDB Student Management System
// Database: student_management_nosql
// Collection: students

// 1. Select database
use("student_management_nosql");

// 2. Retrieve all student documents
db.students.find({});

// 3. Find John Ade using student ID
db.students.find({
  student_id: "STU001"
});

// 4. Find students in Computer Science
db.students.find({
  "department.department_name": "Computer Science"
});

// 5. Find students enrolled in CSC401
db.students.find({
  "enrollments.course_code": "CSC401"
});

// 6. Update John Ade's enrollment status
db.students.updateOne(
  { student_id: "STU001" },
  { $set: { enrollment_status: "Graduated" } }
);

// 7. Count active students
db.students.countDocuments({
  enrollment_status: "Active"
});

// 8. Verify final student records
db.students.find(
  {},
  { _id: 0, student_id: 1, name: 1, enrollment_status: 1 }
);
