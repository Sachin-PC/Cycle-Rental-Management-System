# Cycle-Rental-Management-System

Backend: Spring Boot

Frontend: JSP

Database: MySQL

We have used Spring Tool Suite(STS) 3.10 for the development of the application. 

We need to have JDK and JRE installed before using Spring Tool Suite(STS). You can use any Java IDE to run this project.

Before running the project as a spring application, we need to connect the project with the external persistent database. We are using MySQL as our external persistent database.

Steps to install MySQL server in Ubuntu:

$ sudo apt update

$ sudo apt install mysql-server

Once the installation is completed, MySQL will start automatically. Check whether MySQL server is running or not by the command:

$ sudo apt install mysql-server

Now, for our project, the username is “root” and the password is “password”. But you can give any username and password,  but make sure you update this username and password in “application.properties” file in the project. 
Also, the database name we have given is CRMS, you can give any name as the database name, but you need to change it in the "application.properties" file. 

To not change anything in the "application.properties" file, just give the username as “root”, password as “password” and create a database with the name “CRMS”.
Once the database is set up and running, now buildthe imported project and run the application.

The web application will start running in the local port specified or the default port.
