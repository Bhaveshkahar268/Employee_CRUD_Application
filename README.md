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

---

# Technologies Used

- Java
- JDBC
- MySQL
- MySQL Connector/J
- Core Java OOP Concepts

---

# Project Structure

```text
Employee_CRUD_Application/
│
├── EmployeeCRUD.class
├── employee_database_setup.sql
├── lib/
│   ├── mysql-connector-j.jar
│   └── required-library.jar
│
├── src/
├── README.md
```

---

# Requirements

Before running the application, make sure the following are installed:

- Java JDK 8 or above
- MySQL Server
- MySQL Workbench (Optional)
- MySQL JDBC Connector
- Command Prompt / Terminal

---

# Database Setup

The project includes a ready-to-run SQL setup file:

```text
employee_database_setup.sql
```

This file automatically:

- Creates the database
- Creates all required tables
- Adds foreign key relationships
- Inserts default State and City data

Database Name:

```text
EMPLOYEE_DATA
```

---

# Database Tables

## State Table

Stores state information.

| Column | Type |
|-------|------|
| code | INT |
| name | VARCHAR(35) |

---

## City Table

Stores city information linked with states.

| Column | Type |
|-------|------|
| code | INT |
| name | VARCHAR(35) |
| state_code | INT |

---

## Employee Table

Stores employee details.

| Column | Type |
|-------|------|
| emp_id | CHAR(10) |
| name | VARCHAR(50) |
| date_of_birth | DATE |
| city_code | INT |
| gender | CHAR(1) |
| salary | INT |

---

# Default State Entries

| Code | State |
|------|--------|
| 1 | Madhya Pradesh |
| 2 | Maharashtra |

---

# Default City Entries

| Code | City | State Code |
|------|------|------------|
| 1 | Ujjain | 1 |
| 2 | Indore | 1 |
| 3 | Mumbai | 2 |
| 4 | Pune | 2 |
| 5 | Satara | 2 |

---

# How to Setup Database

## Option 1 — Using MySQL Workbench

1. Open MySQL Workbench
2. Open `employee_database_setup.sql`
3. Click Execute

The database and tables will be created automatically.

---

## Option 2 — Using MySQL Command Line

Run:

```bash
mysql -u root -p
```

Then:

```sql
SOURCE employee_database_setup.sql;
```

---

# How to Run the Application

The application uses external JAR files located inside the `lib` folder.

You must provide:

- Main class: `EmployeeCRUD.class`
- Classpath containing all JAR files inside `lib`

---

# Run on Windows

Open Command Prompt inside the project folder and run:

```cmd
java -cp ".;lib/*" EmployeeCRUD
```

---

# Run on macOS

Open Terminal inside the project folder and run:

```bash
java -cp ".:lib/*" EmployeeCRUD
```

---

# Run on Linux

Open Terminal inside the project folder and run:

```bash
java -cp ".:lib/*" EmployeeCRUD
```

---

# Compile the Project (Optional)

If you want to compile manually from source code:

## Windows

```cmd
javac -cp ".;lib/*" EmployeeCRUD.java
```

## macOS / Linux

```bash
javac -cp ".:lib/*" EmployeeCRUD.java
```

---

# Example Functionalities

- Insert Employee Data
- Display All Employees
- Search Employee by ID
- Update Employee Information
- Remove Employee Record

---

# Learning Outcomes

This project helps in understanding:

- JDBC API
- Database Connectivity
- SQL Operations
- Java Classpath Handling
- External Library Integration
- CRUD Application Development

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

https://github.com/Bhaveshkahar268/Employee_CRUD_Application# Employee CRUD Application

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

---

# Technologies Used

- Java
- JDBC
- MySQL
- MySQL Connector/J
- Core Java OOP Concepts

---

# Project Structure

```text
Employee_CRUD_Application/
│
├── EmployeeCRUD.class
├── lib/
│   ├── mysql-connector-j.jar
│   └── another-required.jar
│
├── src/
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

# Database Configuration

Create a MySQL database and required employee table before running the application.

Example:

```sql
CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    department VARCHAR(100),
    salary DOUBLE
);
```

Update the database credentials inside the Java source code on line 42 & line 156:

```java
String url = "jdbc:mysql://localhost:3306/employee_db";
String username = "root";
String password = "your_password";
```

---

# How to Run the Application

The application uses external JAR files located inside the `lib` folder.

You must provide:

- Main class: `EmployeeCRUD.class`
- Classpath containing both JAR files inside `lib`

---

# Run on Windows

Open Command Prompt inside the project folder and run:

```cmd
java -cp ".;lib/*" EmployeeCRUD
```

---

# Run on macOS

Open Terminal inside the project folder and run:

```bash
java -cp ".:lib/*" EmployeeCRUD
```

---

# Run on Linux

Open Terminal inside the project folder and run:

```bash
java -cp ".:lib/*" EmployeeCRUD
```

---

# Compile the Project (Optional)

If you have `.java` source files and want to compile manually:

## Windows

```cmd
javac -cp ".;lib/*" EmployeeCRUD.java
```

## macOS / Linux

```bash
javac -cp ".:lib/*" EmployeeCRUD.java
```

---

# Example Functionalities

- Insert Employee Data
- Display All Employees
- Search Employee by ID
- Update Employee Information
- Remove Employee Record

---

# Learning Outcomes

This project helps in understanding:

- JDBC API
- Database Connectivity
- SQL Operations
- Java Classpath Handling
- External Library Integration
- CRUD Application Development

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
