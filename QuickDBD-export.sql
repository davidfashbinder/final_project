-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Player" (
    "player_id" varchar   NOT NULL,
    "name" varchar   NOT NULL,
    "age" int   NOT NULL,
    "DOB" date   NOT NULL,
    "weight" int   NOT NULL,
    "height" int   NOT NULL,
    "team_name" vachar   NOT NULL,
    CONSTRAINT "pk_Player" PRIMARY KEY (
        "player_id"
     )
);

CREATE TABLE "Teams" (
    "games_played" int   NOT NULL,
    "advancd_postseason" varchar   NOT NULL,
    "salary" currency   NOT NULL,
    "team_name" varchar   NOT NULL,
    CONSTRAINT "pk_Teams" PRIMARY KEY (
        "team_name"
     )
);

CREATE TABLE "Player_Stats" (
    "player_id" varchar   NOT NULL,
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

ALTER TABLE "Player" ADD CONSTRAINT "fk_Player_player_id" FOREIGN KEY("player_id")
REFERENCES "Player_Stats" ("");

ALTER TABLE "Teams" ADD CONSTRAINT "fk_Teams_team_name" FOREIGN KEY("team_name")
REFERENCES "Player_Stats" ("");

ALTER TABLE "Player_Stats" ADD CONSTRAINT "fk_Player_Stats_player_id" FOREIGN KEY("player_id")
REFERENCES "Player" ("");

