#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

NUMBER_TO_GUESS=$(( $RANDOM % 1000 + 1 ))
NUMBER_OF_TRIES=1
NEW_USER=0
GAMES_PLAYED=0
BEST_GAME=0
#echo $NUMBER_TO_GUESS
echo "Enter your username:"
read USERNAME

USERS_RESULT=$($PSQL "SELECT * FROM users WHERE username='$USERNAME'")

if [[ -z $USERS_RESULT ]]
then
  NEW_USER=1
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  
  GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE username='$USERNAME'")
  BEST_GAME=$($PSQL "SELECT best_game FROM users WHERE username='$USERNAME'")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
#echo $((GAMES_PLAYED+=1))
#echo $BEST_GAME

echo "Guess the secret number between 1 and 1000:"
read GUESS

re='^[0-9]+$'
while ! [[ $GUESS =~ $re ]]
do
  echo "That is not an integer, guess again:"
  read GUESS
  
done

while [ $NUMBER_TO_GUESS != $GUESS ]
do
  ((NUMBER_OF_TRIES++))
  if [[ $GUESS > $NUMBER_TO_GUESS ]]
  then
    echo "It's lower than that, guess again:"
    
  else
    echo "It's higher than that, guess again:"
  fi
  read GUESS

  while ! [[ $GUESS =~ $re ]]
  do
    echo "That is not an integer, guess again:"
    read GUESS
    
  done
    
done

if [[ $NUMBER_TO_GUESS == $GUESS ]]
then
  ((GAMES_PLAYED++))  
  if [[ $BEST_GAME == 0 ]]
  then
    BEST_GAME=$NUMBER_OF_TRIES
  elif [[ $NUMBER_OF_TRIES < $BEST_GAME ]]
  then
    BEST_GAME=$NUMBER_OF_TRIES
  fi

  if [[ $NEW_USER == 1 ]]  
  then
    #echo $USERNAME $GAMES_PLAYED $BEST_GAME
    INSERT=$($PSQL "INSERT INTO users(username,games_played,best_game) VALUES('$USERNAME',$GAMES_PLAYED,$BEST_GAME)")
  else
    #echo $GAMES_PLAYED $BEST_GAME $USERNAME
    UPDATE=$($PSQL "UPDATE users set games_played=$GAMES_PLAYED, best_game=$BEST_GAME WHERE username='$USERNAME'")
  fi

  echo "You guessed it in $NUMBER_OF_TRIES tries. The secret number was $NUMBER_TO_GUESS. Nice job!"
fi

