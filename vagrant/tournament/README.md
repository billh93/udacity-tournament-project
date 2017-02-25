# Swiss-Pairing Tournament Simulator

This program is based off the Swiss-Pairing System where there is a x
number of matches and rounds regardless who wins or loses. The one who
wins the tournament is the one with the most wins and least losses.

## Project Specification

Develop a database schema to store details of matches between players.
Then write a Python module to rank the players and pair them up in matches in a tournament.

## Requirements

In order to run this program in your localhost you will need the following:

1. Computer (Windows, Mac OS or Linux!)
2. The latest vagrant build provided by Udacity
3. Working knowledge of using the command-line

## Project Files

| File name | Description |
|------|-------------|
|**tournament.sql**| This is the database where matches and players are recorded and stored.|
|**tournament.py**| This file is the Python file containing the functions that executes the tournament.|
|**tournament_test.py**| This file contains the unit_tests provided by Udacity.|

## Instructions

1. Download this repository

2. Unzip file

3. Start Vagrant
  1. Open Terminal or cmd and browse to the vagrant folder
  2. Type `vagrant up`
4. SSH in to the vagrant VM
  1. In the same terminal type `vagrant ssh`
5. Change to the correct folder
  1. Type `cd /vagrant/tournament`
6. Open PSQL and run the tournament.sql
  1. type `psql`
  2. copy the contents of tournament.sql and paste in to the terminal window
  3. type `\q` to quit out of PSQL
7. Run the tests
  1. In the terminal type `python tournament_test.py`

## Expected Outcome

vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$ python tournament_test.py
1. Old matches can be deleted.
2. Player records can be deleted.
3. After deleting, countPlayers() returns zero.
4. After registering a player, countPlayers() returns 1.
5. Players can be registered and deleted.
6. Newly registered players appear in the standings with no matches.
7. After a match, players have updated standings.
8. After one match, players with one win are paired.
Success!  All tests pass!


## Contact Information

If you have any issues/feedback or would like to just get in touch you
can reach me at billh93@gmail.com


