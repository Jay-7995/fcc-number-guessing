#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
SECRET_NUMBER=$(($RANDOM % 1000 + 1))
NUMBER_OF_GUESSES=1
#echo $SECRET_NUMBER
echo "Enter your username:"
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

if [[ -z $USER_ID ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  RESULT=$($PSQL "INSERT INTO users (username) VALUES ('$USERNAME')")
else
  GAMES_PLAYED=$($PSQL "SELECT count(*) FROM games WHERE user_id=$USER_ID")
  BEST_GAME=$($PSQL "SELECT tries FROM games WHERE user_id=$USER_ID order by tries desc limit 1")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
echo "Guess the secret number between 1 and 1000:"
read GUESS
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
GAME=$($PSQL "insert into games(user_id, tries) values($USER_ID, 1)")
GAME_ID=$($PSQL "select game_id from games where user_id=$USER_ID order by game_id desc limit 1")

while [[ $GUESS -ne $SECRET_NUMBER ]]
do
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  else
    if [[ $GUESS -gt $SECRET_NUMBER ]]
    then
      echo "It's lower than that, guess again:"
    else
      echo "It's higher than that, guess again:"
    fi
  fi
  NUMBER_OF_GUESSES=$(($NUMBER_OF_GUESSES+1))
  read GUESS
done
RES=$($PSQL "UPDATE games SET tries=$NUMBER_OF_GUESSES WHERE game_id=$GAME_ID")

echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
