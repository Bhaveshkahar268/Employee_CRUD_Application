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
