-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Player_Batting" (
    "player_id" varchar   NOT NULL,
	"yearID" int NOT NULL,
	"teamID" varchar NOT NULL,
	"lgID" varchar,
	"G" varchar,
	"AB" varchar,
	"R" varchar,
	"H" varchar,
	"2B" varchar,
	"3B" varchar,
	"HR" varchar,
	"RBI" varchar,
	"SB" varchar,
	"CS" varchar,
	"BB" varchar,
	"SO" varchar,
	"IBB" varchar,
	"HBP" varchar,
	"SH" varchar,
	"SF" varchar,
	"GIDP" varchar
   /* CONSTRAINT "pk_Player_Stats" PRIMARY KEY (
        "player_id"
     )*/
);

CREATE TABLE "Player" (
    "playerId" varchar  NOT NULL,
	"birthYear" varchar,
	"birthMonth" varchar,
	"birthDay" varchar,
	"birthCountry" varchar,
	"birthState" varchar,
	"birthCity" varchar,
	"deathYear" varchar,
	"deathMonth" varchar,
	"deathDay" varchar,
	"nameFirst" varchar,
	"nameLast" varchar,
	"nameGiven" varchar,
	"weight" varchar,
	"height" varchar,
	"bats" varchar,
	"throws" varchar,
	"debut" date,
	"finalGame" date
    /*CONSTRAINT "pk_Player" PRIMARY KEY (
        "player_id"
     ),
    CONSTRAINT "uc_Player_teamId" UNIQUE (
        "teamId"
    )*/
);

CREATE TABLE "Teams" (
    "yearId" int   NOT NULL,
    "teamId" varchar   NOT NULL,
    "franchID" varchar   NOT NULL,
    "Rank" int NOT NULL,
    "DivWin" varchar,
    "WCWin" varchar,
    "WSWin" varchar,
    "name" varchar   NOT NULL,
    "park" varchar,
    "BPF" int   NOT NULL,
    "PPF" int   NOT NULL
    /*CONSTRAINT "pk_Teams" PRIMARY KEY (
        "teamId"
     )*/
);

CREATE TABLE "Salary" (
	"yearID" int,
	"teamID" varchar,
	"lgID" varchar, 
	"playerID" varchar NOT NULL, 
	"salary" int
	
);

Create Table "Awards" (
	"playerID" varchar NOT NULL,
	"teamID" varchar NOT NULL,
	"yearID" int NOT NULL,
	"lgID" varchar,
	"tie" varchar,
	"notes" varchar
);

Create Table "AllStar" (
	"playerID" varchar NOT NULL,
	"yearID" int,
	"gameNum" int,
	"gameID" varchar,
	"teamID" varchar NOT NULL,
	"lgID" varchar NOT NULL,
	"GP" int NOT NULL,
	"startingPos" int


);

ALTER TABLE "Player_Stats" ADD CONSTRAINT "fk_Player_Stats_player_id" FOREIGN KEY("player_id")
REFERENCES "Player" ("player_id");

ALTER TABLE "Teams" ADD CONSTRAINT "fk_Teams_teamId" FOREIGN KEY("teamId")
REFERENCES "Player" ("teamId");

