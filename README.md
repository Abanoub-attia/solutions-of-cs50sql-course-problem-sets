# CS50 SQL — Problem Set Solutions

This repository contains my solutions to the problem sets from **[CS50's Introduction to Databases with SQL](https://cs50.harvard.edu/sql/)**, a course offered by Harvard University.

---

## 📚 About the Course

CS50's Introduction to Databases with SQL covers the fundamentals of relational databases, SQL querying, database design, and optimization. Topics include:

- SQL syntax and querying
- Database schema design
- Constraints and data integrity
- Views, indexes, and triggers
- Scaling with MySQL
- Python integration with databases

---

## 📁 Repository Structure
```text
solutions-of-cs50sql-course-problem-sets/
├───pset0
│   ├───cyberchase
│   ├───normals
│   ├───players
│   └───views
├───pset1
│   ├───dese
│   ├───moneyball
│   └───packages
├───pset2
│   ├───atl
│   ├───connect
│   └───donuts
├───pset3
│   ├───dont-panic
│   └───meteorites
├───pset4
│   ├───bnb
│   ├───census
│   └───private
├───pset5
│   ├───harvard
│   └───snap
└───pset6
    ├───deep
    ├───dont-panic-python
    └───sentimental-connect
```

---

## 🛠️ Technologies Used

- **SQLite3** — Primary database engine for Problem Sets 0–5
- **MySQL** — Used in Problem Set 6 for scaling exercises
- **Python 3** — For automated database interactions and scripting
- **SQL** — Data retrieval, transformation, and analysis

---

## 🚀 How to Use

1. Clone this repository:
   ```bash
   git clone https://github.com/Abanoub-attia/solutions-of-cs50sql-course-problem-sets.git
   cd solutions-of-cs50sql-course-problem-sets
2. Navigate to any problem set folder:
   ```bash
   cd pset1/moneyball
3. Open the .sql files in your preferred text editor or run them with SQLite:
   ```bash
   sqlite3 moneyball.db
   .read queries.sql

---

## 🎓 What I Learned
Through this course, I gained hands-on experience with:
- Writing complex SQL queries using JOIN, GROUP BY, HAVING, and subqueries
- Designing normalized database schemas with proper constraints
- Creating views, indexes, and triggers for optimization
- Transitioning from SQLite to MySQL for production-scale applications
- Integrating Python with databases for automation and data processing