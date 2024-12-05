# online-help-desk-user-crud
 A user management system for an online help desk, built using Java, MVC architecture, HTML, CSS, and MySQL. Demonstrates key OOP principles like encapsulation, abstraction, and polymorphism, designed as a Year 2 Semester 1 OOP project for SLIIT.

## Features

- **Create**: Add new users to the system.
- **Read**: View a list of all users and their details.
- **Update**: Modify existing user details.
- **Delete**: Remove users from the system.

## Technologies Used

- **Frontend**: HTML, CSS
- **Backend**: Java (Servlets, JSP)
- **Database**: MySQL
- **Server**: Apache Tomcat v9
- **IDE**: Eclipse IDE
- **Architecture**: MVC (Model-View-Controller)

## Screenshots

- **Home**

![Home1](https://github.com/user-attachments/assets/cd628985-c885-4f05-9bbe-c14e8ba9793c)

![Home2](https://github.com/user-attachments/assets/17d3cc99-8575-4fb4-9071-07c6e90c2e03)

- **My Profile**

![MyProfile](https://github.com/user-attachments/assets/4ca839f6-5143-4ad4-b588-bc464f76fd73)

- **Register**
  
![register](https://github.com/user-attachments/assets/e26e9517-22f3-42f9-b0e3-444da83e7714)

- **Login**
  
![login](https://github.com/user-attachments/assets/1cdc1647-bfea-4097-885d-b0f2f4e8a5a3)


## Steps to Install and Run

### 1. Clone the Repository

Open a terminal and clone the repository:

```bash
git clone https://github.com/KalpaVidusha/online-help-desk-user-crud.git
```

### 2. Import the Project into Eclipse

- Open Eclipse and select `File > Import`
- Select "Existing Projects into Workspace" under the General section
- Browse to the cloned online-helpdesk folder and import the project

### 3. Configure Apache Tomcat 9

- In Eclipse, go to `Window > Preferences`
- Expand Server and click on Runtime Environments
- Click Add, then select Apache Tomcat v9.0
- Browse to the Tomcat installation directory and click Finish

### 4. Set Up the Database

Install and run MySQL:

```sql
# Create the database
CREATE DATABASE online_help_desk;
```

Import the provided database file(online_help_desk.sql) to MySQL:

```bash
mysql -u your-username -p online_helpdesk < online_helpdesk.sql
```

Configure the database connection in the `DatabaseConnection.java` file:

```java
private static final String URL = "jdbc:mysql://localhost:3306/online_helpdesk";
private static final String USERNAME = "your-username";
private static final String PASSWORD = "your-password";
```

### 5. Deploy the Application on Tomcat

- Right-click on the project in the Eclipse Project Explorer
- Select `Run As > Run on Server` and choose Apache Tomcat 9
- Click Finish. The server will start, and the application will be deployed

### 6. Access the Application

Once deployed, open your browser and navigate to:

```
http://localhost:8090/HelpDeskOnline/index.jsp
```

## Building and Running

If the project doesn't auto-build:

- In Eclipse, go to `Project > Build Project`
- Deploy the application on Tomcat again



