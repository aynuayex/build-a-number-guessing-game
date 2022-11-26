#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess -t --no-align -c"
#$PSQL "truncate table users,inputs,random"
random=$(( RANDOM % 1000 + 1 ))
#echo $random
#echo -e "\n~~ Number Guessing Game ~~\n"
echo "Enter your username:"
read user_name

name="$($PSQL "SELECT name FROM users WHERE name='$user_name'")"
if [[ -z $name ]]
then
INSERT_INPUT_1="$($PSQL "INSERT INTO users(name) values('$user_name')")"
name="$($PSQL "SELECT name FROM users WHERE name='$user_name'")"
user_id="$($PSQL "SELECT user_id FROM users WHERE name='$user_name'")"
INSERT_INPUT_2="$($PSQL "INSERT INTO random(random_number,user_id) values($random,$user_id)")"
random_id="$($PSQL "SELECT random_id FROM random WHERE random_number=$random")"
echo "Welcome, $name! It looks like this is your first time here."
else
user_id="$($PSQL "SELECT user_id FROM users WHERE name='$user_name'")"
games_played="$($PSQL "SELECT count(random_id) FROM random WHERE user_id=$user_id")"
best_game="$($PSQL "SELECT count(input_id) FROM inputs full join random using(random_id) WHERE user_id=$user_id GROUP BY random_id HAVING count(input_id) > 0 ORDER BY count(input_id) limit 1")"
INSERT_INPUT_3="$($PSQL "INSERT INTO random(random_number,user_id) values($random,$user_id)")"
random_id="$($PSQL "SELECT random_id FROM random WHERE random_number=$random")"
echo "Welcome back, $name! You have played $games_played games, and your best game took $best_game guesses."
fi
echo "Guess the secret number between 1 and 1000:"
read input_number

if [[ ! $input_number =~ ^[0-9]+$ ]]
then
 while [[ ! $input_number =~ ^[0-9]+$ ]]
    do
     echo "That is not an integer, guess again:"
     read input_number
     done
fi
INSERT_INPUT_4="$($PSQL "INSERT INTO inputs(input_number,random_id) values($input_number,$random_id)")"
while [[ $input_number -ne $random ]]
  do
    if [[ $input_number -lt $random ]]
    then
    echo "It's higher than that, guess again:"
    read input_number
    while [[ ! $input_number =~ ^[0-9]+$ ]]
    do
     echo "That is not an integer, guess again:"
     read input_number
     done
     
    INSERT_INPUT_5="$($PSQL "INSERT INTO inputs(input_number,random_id) values($input_number,$random_id)")"
     
    else
    echo "It's lower than that, guess again:"
      read input_number
    while [[ ! $input_number =~ ^[0-9]+$ ]]
    do
     echo "That is not an integer, guess again:"
     read input_number
     done
     
     INSERT_INPUT_6="$($PSQL "INSERT INTO inputs(input_number,random_id) values($input_number,$random_id)")"
     
    fi
  done
  guesses="$($PSQL "SELECT count(input_id) FROM inputs full join random using(random_id) WHERE user_id=$user_id and random_number=$random")"
echo "You guessed it in $guesses tries. The secret number was $random. Nice job!"
