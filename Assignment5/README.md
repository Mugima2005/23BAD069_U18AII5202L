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

2) Filters (Slicers)

Implemented slicers for interactive filtering:

Department

Semester

Subject

These slicers dynamically update all KPI cards and charts.

3) Linked Views for Drill-Down Analysis

Implemented multiple linked visual views using:

✅ Drill Down

Department → Semester → Subject
Used hierarchical axis in charts for deep analysis.

✅ Drill Through

Created a student-detail page
Users can right-click a department/semester and drill through to view student-wise data.

✅ Cross Filtering

Clicking any visual automatically filters other visuals on the page.

📊 Visuals Used in Dashboard

KPI Cards (Attendance, Performance, Student Count)

Bar Chart (Performance by Department / Semester)

Line Chart (Attendance trend across semesters)

Table View (Student detailed drill-through)

🧠 Key Insights from Dashboard

Attendance trends across departments and semesters can be monitored easily.

Performance comparison by subject helps identify weak areas.

Drill-through enables tracking of student-level performance and grades.

Interactive filters support deeper analysis and faster decision-making.

✅ Conclusion

This PowerBI dashboard provides real-time and interactive monitoring of smart campus metrics.
It helps institutions improve transparency, identify performance issues early, and support AI-driven academic decision-making.

🛠 Tools Used

PowerBI Desktop

DAX Measures

Visualizations (Cards, Charts, Tables, Slicers)

📌 Output

An interactive PowerBI dashboard with KPI cards, filters, and drill-down analysis for a smart campus system.
