#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess --no-align --tuples-only -c"

if [[ $1 ]]
  then 
    echo -e "/n$1"
fi

echo -e "\nEnter your username:\n"
read USERNAME

GET_USER=$($PSQL "select * from users where username = '$USERNAME'")
GAMES_PLAYED=$($PSQL "select count(*) from users join games using (user_id) where username = '$USERNAME'")
BEST_GAMES=$($PSQL "select min(attempts) from users join games using (user_id) where  username = '$USERNAME'")

if [[ -z $GET_USER ]]
  then 
    INP_USER=$($PSQL "insert into users(username) values('$USERNAME')")
    echo "Welcome, $USERNAME! It looks like this is your first time here."
     
  else
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAMES guesses."

fi


RAND_NUM=$(( $RANDOM % 1000 + 1 ))
ATTEMPT=1
echo "Guess the secret number between 1 and 1000:"

while read GUESS
    do
        if [[ ! $GUESS =~ ^[0-9]+$ ]]
            then
                echo "That is not an integer, guess again:"
            else
                if [[ $RAND_NUM -eq $GUESS ]]
                    then
                        break;
                    else
                    if [[ $GUESS -gt $RAND_NUM ]]
                        then
                            echo -n "It's lower than that, guess again:"
                    elif [[ c$GUESS -lt $RAND_NUM ]]
                        then
                            echo -n "It's higher than that, guess again:"
                    fi
                
                fi
        fi                
        ATTEMPT=$(( $ATTEMPT + 1 )) 
    done


 
if [[ $ATTEMPT == 1 ]]
    then
        echo "You guessed it in $ATTEMPT tries. The secret number was $RAND_NUM. Nice job!"
    else
        echo "You guessed it in $ATTEMPT tries. The secret number was $RAND_NUM. Nice job!"
fi


USER_ID=$($PSQL "select user_id from users where username= '$USERNAME'")
GAMES=$($PSQL "insert into games (user_id, attempts) values ('$USER_ID', '$ATTEMPT')")
