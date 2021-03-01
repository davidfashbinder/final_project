-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Player_Stats" (
    "player_id" int   NOT NULL,
    "Games_Played" int   NOT NULL,
    "hits_at_bat" int   NOT NULL,
    "seasons_played" int   NOT NULL,
    "team_name" varchar   NOT NULL,
    "wins" int   NOT NULL,
    "losses" int   NOT NULL,
    "at_bats" int   NOT NULL,
    CONSTRAINT "pk_Player_Stats" PRIMARY KEY (
        "player_id"
     )
);

CREATE TABLE "Player" (
    "player_id" int   NOT NULL,
    "name" varchar   NOT NULL,
    "age" int   NOT NULL,
    "DOB" date   NOT NULL,
    "weight" int   NOT NULL,
    "height" int   NOT NULL,
    "team_name" varchar   NOT NULL,
    "teamId" varchar   NOT NULL,
    CONSTRAINT "pk_Player" PRIMARY KEY (
        "player_id"
     ),
    CONSTRAINT "uc_Player_teamId" UNIQUE (
        "teamId"
    )
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

ALTER TABLE "Player_Stats" ADD CONSTRAINT "fk_Player_Stats_player_id" FOREIGN KEY("player_id")
REFERENCES "Player" ("player_id");

ALTER TABLE "Teams" ADD CONSTRAINT "fk_Teams_teamId" FOREIGN KEY("teamId")
REFERENCES "Player" ("teamId");

