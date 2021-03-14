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


=======
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


>>>>>>> 487bc4b5f63372d27ab5864d3e85e6e133a28c74
To Test success uncomment the last input and run the command. You can change the table name test other tables. It should return the contents of the table listed. 