-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Allstar" (
    "playerID" vachar   NOT NULL,
    "yearID" int   NOT NULL,
    "gameNum" int   NOT NULL,
    "gameID" varchar   NOT NULL,
    "teamID" varchar   NOT NULL,
    "lgID" varchar   NOT NULL,
    "GP" int   NOT NULL,
    "startingPos" int   NOT NULL,
    CONSTRAINT "pk_Allstar" PRIMARY KEY (
        "playerID"
     )
);

CREATE TABLE "Players" (
    "playerID" varchar   NOT NULL,
    "birthYear" int   NOT NULL,
    "birthMonth" int   NOT NULL,
    "birthDay" int   NOT NULL,
    "birthCountry" varchar   NOT NULL,
    "birthState" varchar   NOT NULL,
    "birthCity" varchar   NOT NULL,
    "deathYear" int   NOT NULL,
    "deathMonth" int   NOT NULL,
    "deathDay" int   NOT NULL,
    "nameFirst" varchar   NOT NULL,
    "nameLast" varchar   NOT NULL,
    "nameGiven" varchar   NOT NULL,
    "weight" int   NOT NULL,
    "height" int   NOT NULL,
    "bats" varchar   NOT NULL,
    "throws" varchar   NOT NULL,
    "debut" varchar   NOT NULL,
    "finalGame" varchar   NOT NULL,
    CONSTRAINT "pk_Players" PRIMARY KEY (
        "playerID"
     )
);

CREATE TABLE "Salaries" (
    "yearID" int   NOT NULL,
    "teamID" varchar   NOT NULL,
    "lgID" varchar   NOT NULL,
    "playerID" varchar   NOT NULL,
    "salary" int   NOT NULL
);

CREATE TABLE "Awards" (
    "playerID" varcvhar   NOT NULL,
    "awardID" vachar   NOT NULL,
    "yearID" int   NOT NULL,
    "lgID" varchar   NOT NULL,
    "tie" vachar   NOT NULL,
    "notes" varchar   NOT NULL
);

CREATE TABLE "Teams" (
    "yearID" int   NOT NULL,
    "lgID" varchar   NOT NULL,
    "teamID" varchar   NOT NULL,
    "franchID" varchar   NOT NULL,
    "divID" varchar   NOT NULL,
    "Rank" int   NOT NULL,
    "Ghome" int   NOT NULL,
    "DivWin" varchar   NOT NULL,
    "WCWin" varchar   NOT NULL,
    "LgWin" varchar   NOT NULL,
    "WSWin" varchar   NOT NULL,
    "name" varchar   NOT NULL,
    "park" varchar   NOT NULL,
    "attendance" int   NOT NULL,
    "BPF" int   NOT NULL,
    "PPF" int   NOT NULL,
    "teamIDBR" varchar   NOT NULL,
    "teamIDlahman45" varchar   NOT NULL,
    "teamIDretro" varchar   NOT NULL,
    CONSTRAINT "pk_Teams" PRIMARY KEY (
        "teamID"
     )
);

CREATE TABLE "Player_batting" (
    "playerID" vartchar   NOT NULL,
    "yearID" int   NOT NULL,
    "teamID" varchar   NOT NULL,
    "lgID" varchar   NOT NULL,
    "G" int   NOT NULL,
    "AB" int   NOT NULL,
    "R" int   NOT NULL,
    "H" int   NOT NULL,
    "2B" int   NOT NULL,
    "3B" int   NOT NULL,
    "HR" int   NOT NULL,
    "RBI" int   NOT NULL,
    "SB" int   NOT NULL,
    "CS" int   NOT NULL,
    "BB" int   NOT NULL,
    "SO" int   NOT NULL,
    "IBB" int   NOT NULL,
    "HBPint" int   NOT NULL,
    "SH" int   NOT NULL,
    "SF" int   NOT NULL,
    "GIDP" int   NOT NULL,
    CONSTRAINT "pk_Player_batting" PRIMARY KEY (
        "playerID"
     )
);

CREATE TABLE "Player_Pitching" (
    "playerID" varchar   NOT NULL,
    "yearID" int   NOT NULL,
    "stint" int   NOT NULL,
    "teamID" varchar   NOT NULL,
    "lgID" varchar   NOT NULL,
    "W" int   NOT NULL,
    "L" int   NOT NULL,
    "G" int   NOT NULL,
    "GS" int   NOT NULL,
    "CG" int   NOT NULL,
    "SHO" int   NOT NULL,
    "SV" int   NOT NULL,
    "IPouts" int   NOT NULL,
    "H" int   NOT NULL,
    "ER" int   NOT NULL,
    "HR" int   NOT NULL,
    "BB" int   NOT NULL,
    "SO" int   NOT NULL,
    "BAOpp" int   NOT NULL,
    "ERA" int   NOT NULL,
    "IBB" int   NOT NULL,
    "WP" int   NOT NULL,
    "HBP" int   NOT NULL,
    "BK" int   NOT NULL,
    "BFP" int   NOT NULL,
    "GF" int   NOT NULL,
    "R" int   NOT NULL,
    "SH" int   NOT NULL,
    "SF" int   NOT NULL,
    "GIDP" int   NOT NULL,
    CONSTRAINT "pk_Player_Pitching" PRIMARY KEY (
        "playerID"
     )
);

CREATE TABLE "Managers" (
    "playerID" varchar   NOT NULL,
    "yearID" int   NOT NULL,
    "teamID" varchar   NOT NULL,
    "lgID" varchar   NOT NULL,
    "inseason" int   NOT NULL,
    "G" int   NOT NULL,
    "W" int   NOT NULL,
    "L" int   NOT NULL,
    "rank" int   NOT NULL,
    "plyrMgr" varchar   NOT NULL,
    CONSTRAINT "pk_Managers" PRIMARY KEY (
        "playerID"
     )
);

CREATE TABLE "Player_Fielding" (
    "playerID" varchar   NOT NULL,
    "yearID" int   NOT NULL,
    "stint" int   NOT NULL,
    "teamID" varchar   NOT NULL,
    "lgID" vcarchar   NOT NULL,
    "POS" varchar   NOT NULL,
    "G" int   NOT NULL,
    "GS" int   NOT NULL,
    "InnOuts" int   NOT NULL,
    "PO" int   NOT NULL,
    "A" int   NOT NULL,
    "E" int   NOT NULL,
    "DP" int   NOT NULL,
    "PB" int   NOT NULL,
    "WP" int   NOT NULL,
    "SB" int   NOT NULL,
    "CS" int   NOT NULL,
    "ZR" int   NOT NULL,
    CONSTRAINT "pk_Player_Fielding" PRIMARY KEY (
        "playerID"
     )
);

ALTER TABLE "Allstar" ADD CONSTRAINT "fk_Allstar_teamID" FOREIGN KEY("teamID")
REFERENCES "Teams" ("teamID");

ALTER TABLE "Players" ADD CONSTRAINT "fk_Players_playerID" FOREIGN KEY("playerID")
REFERENCES "Allstar" ("playerID");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_teamID" FOREIGN KEY("teamID")
REFERENCES "Teams" ("teamID");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_playerID" FOREIGN KEY("playerID")
REFERENCES "Players" ("playerID");

ALTER TABLE "Awards" ADD CONSTRAINT "fk_Awards_playerID" FOREIGN KEY("playerID")
REFERENCES "Players" ("playerID");

ALTER TABLE "Player_batting" ADD CONSTRAINT "fk_Player_batting_playerID" FOREIGN KEY("playerID")
REFERENCES "Players" ("playerID");

ALTER TABLE "Player_Pitching" ADD CONSTRAINT "fk_Player_Pitching_playerID" FOREIGN KEY("playerID")
REFERENCES "Players" ("playerID");

ALTER TABLE "Managers" ADD CONSTRAINT "fk_Managers_playerID" FOREIGN KEY("playerID")
REFERENCES "Players" ("playerID");

ALTER TABLE "Managers" ADD CONSTRAINT "fk_Managers_teamID" FOREIGN KEY("teamID")
REFERENCES "Teams" ("teamID");

ALTER TABLE "Player_Fielding" ADD CONSTRAINT "fk_Player_Fielding_playerID" FOREIGN KEY("playerID")
REFERENCES "Players" ("playerID");

ALTER TABLE "Player_Fielding" ADD CONSTRAINT "fk_Player_Fielding_teamID" FOREIGN KEY("teamID")
REFERENCES "Teams" ("teamID");

