# Assignment 2 - Database Design Process from start to finish using MySQL Workbench
This assignment will meet the following objectives:

**Course Objectives:**
1. Organize data in ways to emphasize relationships 

2. Perform CRUD operations from both relational and NoSQL databases 

**Weekly Objectives:**

1.  Create advanced SQL queries that make use of the JOIN and HAVE clause
 

## Instructions
For this assignment, you will decide on a problem domain and create a database of your choosing.  This assignment will require you to document business rules and generate a database from the business rules




## Requirements
### Deliverable 1 - Introducing Problem Domain and Business Rules that Identify Relationships ( 10 Points)
For this deliverable, you will propose a problem domain and generate business rules that address the problem domain. The business rules you identify will consist of relationships, constraints, and data you will need to collect. Within the readme file for this repository, you will identify each of the entities along with a brief description describing the purpose of the entity and the data the entity will collect, You will also need to identify the relationships between entities and any assumptions or questions someone would have after reading the business description. You will ultimately decide the answer on behalf of the problem domain when you list your assumptions.
When creating the problem domain and ER Diagram, make sure your database contains a **minimum of 4 tables but no more than 9** with at least **one table serving as an associative entity**.

**Deliverable 1 should be documented within the README.md file of your issued repository - Consider drafting in a Word or Google document first and then translating into Markdown language.**

### Deliverable 2 - Creation of MySQL Workbench ER diagram (10 Points)
Using the documentation from Deliverable 1, you will use the business rules to create an ER Diagram within MySQL Workbench. When accomplishing this deliverable, make sure to adhere to the following items below.
1. Make sure all of the relationships are properly structured using bi-directional statements 
2. Make sure column names are marked as null vs. not null.
3. Make sure entities that are considered weak properly cascade when a record from the strong entity is deleted.


### Deliverable 3 - Database querying (10 Points)
For this Deliverable, you will insert data and query your database. You will need to demonstrate your ability to query from each table in your database. Create a file called **assignment2.sql** and add the following queries into the file.  You will need to take a screenshot of the rendered output for each command and place a screenshot of your output beneath each of the queries you identify.  Make sure to place a SQL comment above each command identifying the query.  Whether you create the database schema using the database modeling tool in MySQL workbench or by some other means, you will need to provide the commands used to create the database and related tables.  the images of your repository can be uploaded to the repository and referenced in your README.md file by using this Markdown syntax ```![alt text](URL_TO IMAGE_IN_REPOSITORY)```   In order to make changes to the data, you may need to change the SQL Editor settings.  You can do this by navigating to EDIT -> SQL Editor -> and unchecking Safe Updates.  It is advised to restart MySQL Workbench after changing this setting.

#### Listed below is a list of requirements for this deliverable
1. Each table should consist of 5 or more records.  Make sure to include the insert queries in your assignment2.sql file
2. Three different SELECT statements that query each table in your database.  
3. Demonstrate your ability to perform a JOIN statement
 

## Submission Guidelines

For this assignment, you will submit 2 items to the repository that has been assigned to you.  The two items that you will need to submit are listed below: 
1. The README.MD file that includes screenshots of the result grid window for each SQL query
   1. Include the image beneath each query.
   2. The **assignment2.sql** file.  The assignment2.sql file should be 
      uploaded to your repository

Once you have completed both items above, you will need to submit the link to your repository for assignment 2 prior to the due date and time listed.  Make sure you receive an email confirmation notifying you that the assignment has been submitted.

### Rubric
| Criteria           | Description                             | Points |
| -------------------| --------------------------------------- | ------ |
| `**PLO Component**: Organize data in ways to emphasize relationships` <br> Deliverable 1 - Introducing Problem Domain and Business Rules that identify Relationships    | Brief description of problem domain/database prompt.  What database are you creating and what purpose will it server (4pts) <br> Documentation of Business Rules that include: Entity description with possible attributes, Relationship amongst entities, anwsered assumptions that address the cardinality, and questions someone would have after reading the problem domain. (6pt)  |   10   |
| `**PLO Component**: Elicit Information from a database that allows data to be visualized` <br> Deliverable 2 - Creating MySQL Workbench ER diagram | All Entities identified in deliverable 1 are visually represented in Workbench ER diagram. * A minimum of 4 entities with at least 1 being an associative entity. (6pts) <br> Relationship strength is indicated by solid or dotted line (2pt) <br> Each column name indicates null vs not null (2pts)   |   10   |
| `**PLO Component**: Elicit Information from a database that allows data to be mined` <br> Deliverable 3 - Database Querying     |  Each table has 5 or more records (2pt)  <br> Three distinct queries for each table using the ```SELECT``` statement  (4pts) <br> Demonstration to perform a JOIN statement (2pts) <br> README.md file provides the SQL command and screenshot of output of each query.  (1pt)   |  10  |
|           |        |**Total Points:   30**   |

## Lab Resources
- [W3 Schools SQL tutorial](https://www.w3schools.com/sql/)
- [Make a ReadMe file Web-based Editor](https://www.makeareadme.com/)
