# Furniture Warehouse

![SQL](https://img.shields.io/badge/SQL-Database-lightpurple?style=flat-square) ![SQL%20Server](https://img.shields.io/badge/SQL%20Server-Microsoft-orange?style=flat-square) ![MSSQL](https://img.shields.io/badge/MSSQL-Server-CC2927?style=flat-square) ![T--SQL](https://img.shields.io/badge/Language-T--SQL-blue?style=flat-square) ![MySQL](https://img.shields.io/badge/MySQL-Database-yellow?style=flat-square)

*A simple SQL-based project for managing and tracking furniture inventory in a warehouse setting. This project consists of SQL scripts for creating tables, inserting data, and running common queries to help warehouse managers keep track of stock levels, item categories, and storage locations.*

## Structure

```
furniture-warehouse/
│
├── sql/
│   ├── warehouse.sql       # SQL script for creating and populating tables with sample data
│   ├── joins.sql           # Example queries for manipulating inventory
│   ├── views.sql
│   └── ...    
├── docs/                     
│   ├── images
│   ├── task.pdf            # Task condition for the project
│   └── documentation.pdf   # Simple project documentation 
├── LICENCE        
└── README.md               # Project overview
```

## Features
```
1. SQL schema for a furniture warehouse inventory system
2. Scripts to create tables for items, categories, locations, and transactions
3. Sample data insertion scripts
4. Example queries for:  
  a) Adding new furniture items  
  b) Updating stock levels  
  c) Checking available inventory  
  d) Tracking item movements
```

## Getting started
### Recuirements
&nbsp;&nbsp; - SQL-compatible database system (MySQL, SQL Server)  
&nbsp;&nbsp; - SQL client or command-line tool

### Setup
1. **Clone** the repository:
    ```bash
    git clone https://github.com/monnicam88/furniture-warehouse.git
    cd furniture-warehouse
    ```
2. **Open** your SQL client and **connect** to your database.
3. **Run** the schema script to create the necessary tables and to insert example records:
    ```sql
    -- Example: For MySQL
    SOURCE warehouse.sql;
    ```
4. **Use** the provided query scripts (such as `joins.sql`, etc.) to interact with your data.

## Contributing
Contributions are welcome! Please fork the repository and submit a pull request. For major changes, open an issue first to discuss your ideas.

## License
This project is licensed under the MIT License.

## Contact
For questions or suggestions, please open an issue or contact [monnicam88](https://github.com/monnicam88).
