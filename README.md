# Library-Management-System
This is an application which maintains all the details of books in library, shows the details of the books 
also when the book was issued and by what date the book should be returned. It also tracks the past record of books issued and returned.


This project is build using Java GUI components for front end and backend links to the various actions and functionality. For database MySql along with JDBC technology is used.


In order to run this project, you will need to clone it and the .jar file inside dist directory is ready to launch the application. 
Requirements to launch this application: 
* Java Runtime Environment 
* MySql database 
    * Here you need to update the username and password of your MySql database tool in the DatabaseHelper.java file inside DAO package, which is our database file.
* If you prefer any other database then you need to update the JDBC driver, database url as well as username and password in the DatabaseHelper.java file inside DAO package, which is our database file.