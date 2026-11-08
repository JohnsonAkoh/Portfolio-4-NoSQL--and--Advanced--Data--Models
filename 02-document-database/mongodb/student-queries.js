
// =====================================================
// MIVA MIT PORTFOLIO 4
// MongoDB Document Database Implementation
// Case Study: Student Management System
// =====================================================

// Select database
use student_management_nosql;

// 1. Insert student documents
db.students.insertMany([
  {
    student_id: "STU001",
    first_name: "John",
    last_name: "Ade",
    email: "john.ade@example.com",
    department: {
      department_id: 1,
      department_name: "Computer Science"
    },
    enrollment_status: "Active"
  },
  {
    student_id: "STU002",
    first_name: "Mary",
    last_name: "Okafor",
    email: "mary.okafor@example.com",
    department: {
      department_id: 2,
      department_name: "Information Technology"
    },
    enrollment_status: "Active"
  }
]);

// 2. Retrieve all students
db.students.find();

// 3. Find a student by ID
db.students.findOne({ student_id: "STU001" });

// 4. Find students by department
db.students.find({
  "department.department_name": "Computer Science"
});

// 5. Update a student's enrollment status
db.students.updateOne(
  { student_id: "STU001" },
  { $set: { enrollment_status: "Graduated" } }
);

// 6. Count active students
db.students.countDocuments({
  enrollment_status: "Active"
});

// 7. Verify updated student record
db.students.findOne({ student_id: "STU001" });
