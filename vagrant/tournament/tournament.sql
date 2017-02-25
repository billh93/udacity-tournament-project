-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

DROP DATABASE IF EXISTS tournament;
DROP VIEW IF EXISTS standings;
DROP TABLE IF EXISTS players, matches;

CREATE DATABASE tournament;

CREATE TABLE players (
  id SERIAL PRIMARY KEY,
  name TEXT
);

CREATE TABLE matches (
  id SERIAL PRIMARY KEY,
  winner INTEGER,
  loser INTEGER,
  FOREIGN KEY(winner) REFERENCES players(id),
  FOREIGN KEY(loser) REFERENCES players(id)
);

-- Creates a view of matches played sorted by wins count
CREATE VIEW standings AS SELECT p.id, p.name,
(SELECT count(*) FROM matches WHERE matches.winner = p.id) as wins,
(SELECT count(*) FROM matches WHERE p.id in (winner, loser)) as played
FROM players p GROUP BY p.id ORDER BY wins DESC;
