#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table --tuples-only -c"

if [[ $1 == '' ]]
then
  echo "Please provide an element as an argument."
else
  re='^[0-9]+$'
  if ! [[ $1 =~ $re ]]
  then
    ELEMENT_RESULT=$($PSQL "SELECT * FROM elements WHERE symbol='$1' OR name='$1'")
  else
    ELEMENT_RESULT=$($PSQL "SELECT * FROM elements WHERE atomic_number=$1")
  fi

  if [[ -z $ELEMENT_RESULT ]]
  then
    echo "I could not find that element in the database."
  else
    echo $ELEMENT_RESULT | while read ATOMIC_NUMBER BAR SYMBOL BAR NAME
    do
      PROPERTIES=$($PSQL "SELECT * FROM properties WHERE atomic_number = $ATOMIC_NUMBER")
      echo $PROPERTIES | while read AN BAR MASS BAR MP BAR BP BAR TYPE_ID
        do
          TYPE=$($PSQL "SELECT type FROM types WHERE type_id=$TYPE_ID")
          echo "The element with atomic number $AN is $NAME ($SYMBOL). It's a$TYPE, with a mass of $MASS amu. $NAME has a melting point of $MP celsius and a boiling point of $BP celsius."
        done
    done 
  fi
  
  
fi
