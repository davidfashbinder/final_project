# Instructions to Load database

- Create New DataBase Named BaseBall_Project

### Copy the files listed below to the same folder you will be running Loading and Cleaning Jupyter Notebook file from
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

#### Before running the "Load and Cleaning" notebook you will need to make changes to the connection string (engine) in the jupyter notebook file. 

engine = create_engine('postgresql+psycopg2://postgres:Superman78@127.0.0.1:5432/BaseBall_Project')

In the string above you will need to update the **postgres:Superman78** with your usename:password. *postgres is the default user if you did not create a new user account when setting up your PgAdmin. 



