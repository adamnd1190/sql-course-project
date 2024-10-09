# SQL Project - Gym Management System

This project involves simulating and designing a database for a new gym. The system helps manage various gym operations, including:

- **Member and Employee Management**: Tracks memberships, attendance, employee shifts, and trainer assignments.
- **Inventory Control**: Manages equipment orders, maintenance, and supplier information.
- **Pandemic Control Measures**: Monitors member attendance across specialized zones to track potential COVID-19 exposures.

## Key Components:

- **Entity-Relationship Diagram (ERD)**: Includes entities such as members, employees, equipment, and areas within the gym.
- **Data Normalization**: The database was normalized to 3NF, ensuring data integrity and reducing redundancy:
  - **1NF**: Unique primary keys and atomic data fields.
  - **2NF**: Functional dependency on the entire primary key.
  - **3NF**: No transitive dependencies between non-key attributes.

## Queries:

- **Manager Queries**: Includes functionalities like updating order amounts, canceling erroneous entries, and managing member subscriptions.
- **Employee Queries**: Enables actions such as inserting new members and updating package prices.

This project demonstrates the design and implementation of a comprehensive SQL-based solution for efficient gym operations management.
