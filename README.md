<<<<<<< HEAD
# Instructions to Load database

- Use PgAdmin to Create New DataBase Named **BaseBall_Project** in your main server instance in Postgres.

### Copy the files listed below to the same folder you will be running the **Loading and Cleaning** Jupyter Notebook file from
    (or you can fix the path in the loading csv to dataFrame steps to reflect the location of these files)
    
    
    - Teams.csv
    - AllStarFull.csv
    - People.csv
    - AwardsPlayers.csv
    - Salaries.csv
    - Fielding.csv
    - Pitching.csv
    - Batting.csv
    - Managers.csv


### Load Jupyter notebook so you can access and edit the **Loading and Cleaning" JupterNotebook. Browse to the cloned repository. 

**Note** You should access and edit the "loading and cleaning" from within Jupyter note book not from the repository.

#### Before running the "Load and Cleaning" notebook you will need to make changes to the connection string (engine) in the jupyter notebook file. 

**engine = create_engine('postgresql+psycopg2://postgres:Superman78@127.0.0.1:5432/BaseBall_Project')**

In the string above you will need to update the **postgres:Superman78** with your usename:password. *postgres is the default user if you did not create a new user account when setting up PgAdmin. 

**NOTE** This same connection will be used to pull data from the database. 

Once you have updated the engine string click to save the changes.

### You are now ready to step through the saved Jupyter notebook "Cleaning and Learning" to create and populate the tables in our dataBase for use with the ML model. 


To Test success uncomment the last input and run the command. You can change the table name test other tables. It should return the contents of the table listed. 
=======
# Baseball Statistics - Beyond the Batter's Box

## Overview:
We will be analyzing a wide variety of data focused on Major League Baseball teams.  The goal will be to create a machine learning model, functional database, and compelling presentation that can answer a large range of questions.  

## Data Source
Lahman Database http://www.seanlahman.com/baseball-archive/statistics/

## Database
Created in postgres, contains the following tables:
1.
2.
3.
4.
5.
6.

## Machine Learning Model 
Created in jupyter notebook

Random Forest
- Great for listing out what the machine weighs heavily for each feature

-----

## Team Members:
1. Frank Berni (fcberni)
2. David Fashbinder (davidfashbinder)
3. Austin Keeler (austink24)
4. Christa Maraffi (cmaraffi)

## Communication:
Slack will be the primary communication tool for all project matters.  We will meet after each Tuesday/Thursday class session for a minimum of 30 minutes (if class does not provide us meeting time), and have ad-hoc meetings as needed. 

## Roles for Deliverable One:
1. Square - David Fashbinder
2. Circle - Austin Keeler
3. Triangle - Frank Berni
4. X - Christa Maraffi

## Roles for Deliverable Two:
1. Square - Christa Maraffi
2. Circle - Frank Berni
3. Triangle - Austin Keeler
4. X - David Fashbinder
>>>>>>> master

