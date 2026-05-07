# Employee CRUD Application

A Java-based Employee Management System that performs CRUD operations (Create, Read, Update, Delete) using JDBC and MySQL database connectivity.

This project is built using Core Java and demonstrates database handling, JDBC connectivity, object-oriented programming concepts, and command-line execution with external JAR dependencies.

---

# Features

- Add Employee Records
- View Employee Details
- Update Existing Employee Data
- Delete Employee Records
- MySQL Database Connectivity using JDBC
- Console-Based Interface
- External JAR Integration
- Cross-Platform Execution Support
- PDF Generation Support using iTextPDF

---

# Technologies Used

- Java
- JDBC
- MySQL
- MySQL Connector/J
- iTextPDF
- Core Java OOP Concepts

---

# Project Structure

```text
Employee_CRUD_Application/
│
├── class/
│   ├── City.class
│   ├── CityModel.class
│   ├── Employee.class
│   ├── EmployeeCRUD.class
│   ├── EmployeeCRUDUI.class
│   ├── EmployeeCRUDUI$ActionButtonPanel.class
│   ├── EmployeeCRUDUI$AddPanel.class
│   ├── EmployeeCRUDUI$AddPanel$1.class
│   ├── EmployeeCRUDUI$EditPanel.class
│   ├── EmployeeCRUDUI$EditPanel$1.class
│   ├── EmployeeCRUDUI$SouthPanel.class
│   ├── EmployeeDetailPanel.class
│   ├── EmployeeModel.class
│   └── ModelException.class
│
├── lib/
│   ├── mysql-connector-j.jar
│   └── itextpdf-5.5.13.jar
│
├── src/
│   └── EmployeeCRUD.java
│
├── employee_database_setup.sql
├── README.md
```
---

# Requirements

Before running the application, make sure the following are installed:

- Java JDK 8 or above
- MySQL Server
- MySQL JDBC Connector
- Command Prompt / Terminal

---

# Database Setup

The project includes a ready-to-use SQL setup file:

```text
employee_database_setup.sql
```

This file automatically:

- Creates the database
- Creates all required tables
- Adds primary keys and foreign keys
- Inserts default State and City records

Database Name:

```sql
EMPLOYEE_DATA
```

---

# How to Setup Database

## Method 1 — Using MySQL Workbench

1. Open MySQL Workbench
2. Open `employee_database_setup.sql`
3. Click Execute

Done. The complete database will be created automatically.

---

## Method 2 — Using MySQL Command Line

```bash
mysql -u root -p < employee_database_setup.sql
```

Then enter your MySQL password.

---

# Database Tables

## State Table

| Column | Type |
|---|---|
| code | INT |
| name | VARCHAR(35) |

---

## City Table

| Column | Type |
|---|---|
| code | INT |
| name | VARCHAR(35) |
| state_code | INT |

---

## Employee Table

| Column | Type |
|---|---|
| emp_id | CHAR(10) |
| name | VARCHAR(50) |
| date_of_birth | DATE |
| city_code | INT |
| gender | CHAR(1) |
| salary | INT |

---

# Default State Entries

| Code | State |
|---|---|
| 1 | Madhya Pradesh |
| 2 | Maharashtra |

---

# Default City Entries

| Code | City | State Code |
|---|---|---|
| 1 | Ujjain | 1 |
| 2 | Indore | 1 |
| 3 | Mumbai | 2 |
| 4 | Pune | 2 |
| 5 | Satara | 2 |

---

# Database Configuration

Before compiling or running the application, update your MySQL database credentials inside:

```text
src/EmployeeCRUD.java
```

Update the database details on:

- Line 42
- Line 156

Example:

```java
String url = "jdbc:mysql://localhost:3306/EMPLOYEE_DATA";
String username = "root";
String password = "your_password";
```

---

# Compile the Project

The project uses external JAR files stored inside the `lib` folder.

Compiled `.class` files are generated inside the `class` folder.

---

## Compile on Windows

Open Command Prompt inside the `src` folder and run:

```cmd
javac -cp ".;../lib/*" -d ../class EmployeeCRUD.java
```

---

## Compile on macOS

Open Terminal inside the `src` folder and run:

```bash
javac -cp "../lib/*" -d ../class EmployeeCRUD.java
```

---

## Compile on Linux

Open Terminal inside the `src` folder and run:

```bash
javac -cp "../lib/*" -d ../class EmployeeCRUD.java
```

---

# Run the Application

After successful compilation, move to the project root directory.

---

## Run on Windows

```cmd
java -cp ".;class;lib/*" EmployeeCRUD
```

---

## Run on macOS

```bash
java -cp "class:lib/*" EmployeeCRUD
```

---

## Run on Linux

```bash
java -cp "class:lib/*" EmployeeCRUD
```

---

# Example Functionalities

- Insert Employee Data
- Display All Employees
- Search Employee by ID
- Update Employee Information
- Remove Employee Record
- Generate Employee PDF Reports

---

# Learning Outcomes

This project helps in understanding:

- JDBC API
- Database Connectivity
- SQL Operations
- Java Classpath Handling
- External Library Integration
- CRUD Application Development
- Relational Database Design
- PDF Generation using Java

---

# Future Improvements

- GUI Integration using Swing or JavaFX
- Maven/Gradle Support
- REST API Integration
- Authentication System
- Logging and Exception Handling
- Docker Deployment

---

# Author

Bhavesh Kahar

GitHub Repository:
https://github.com/Bhaveshkahar268/Employee_CRUD_Application
