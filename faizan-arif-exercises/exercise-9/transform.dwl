%dw 2.0
output application/json  
---
payload.students flatMap ((student) -> student.courses map ((course) -> {
    "course": course.name,
    TopPerformingstudents: [
      {
        "name": student.name,
        "grade": course.grade
      }
    ]
  })) groupBy ((course) -> course.course) mapObject ((value, key, index) -> value maxBy ((item) -> item.TopPerformingstudents.grade[0]))