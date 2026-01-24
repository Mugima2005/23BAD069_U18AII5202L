# Smart Campus KPI Dashboard (PowerBI) – README

## 📌 Project Title
Interactive Analytical Dashboard for AI-Based Smart Campus Monitoring

## 🎯 Objective
To design an interactive analytical dashboard in PowerBI for monitoring key campus metrics such as:
- Student Attendance
- Academic Performance
- Resource/Academic Monitoring (Subject & Grade analysis)

## 🏫 Scenario
An AI-based smart campus system requires a real-time monitoring dashboard to track:
- Attendance levels across departments and semesters  
- Academic performance trends by subject  
- Student-wise drill-down insights for decision-making  

---

## 📂 Dataset Columns Used
| Column Name | Description |
|-----------|-------------|
| Student_ID | Unique student identifier |
| Department | Student department (CSE, AIDS, etc.) |
| Semester | Semester number |
| Subject | Subject name |
| Internal_Test1 | Marks scored in Internal Test 1 |
| Internal_Test2 | Marks scored in Internal Test 2 |
| Assignment_Marks | Marks scored in assignments |
| Attendance_Percentage | Attendance percentage |
| Final_Grade | Final grade (A/B/C/...) |

---

## ✅ PowerBI Dashboard Features Implemented

### 1) KPI Cards
Created KPI Cards for quick monitoring:
- **Average Attendance %**
- **Average Performance Score**
- **Total Students**
- **A Grade Count** (Optional)

#### Sample DAX Measures
```DAX
Avg Attendance % = AVERAGE(StudentData[Attendance_Percentage])

Total Students = DISTINCTCOUNT(StudentData[Student_ID])

Avg Performance =
AVERAGEX(
    StudentData,
    StudentData[Internal_Test1] + StudentData[Internal_Test2] + StudentData[Assignment_Marks]
)

A Grade Count =
CALCULATE(COUNTROWS(StudentData), StudentData[Final_Grade] = "A")

