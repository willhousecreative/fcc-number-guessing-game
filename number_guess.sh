#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
echo "Enter your username:"
read USERNAME
USERNAME_RESULT=$($PSQL "SELECT username FROM users WHERE username = '$USERNAME'")
# if not found in database add <username>
if [[ -z $USERNAME_RESULT ]]
  then
  # insert new <username>
  INSERT_USERNAME_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')") 
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  else
  GAMES_PLAYED_RESULT=$($PSQL "select COUNT(games_id) FROM games inner join users using(user_id) where username='$USERNAME'")
  BEST_GAME_RESULT=$($PSQL "select min(number_of_guesses) from games inner join users using(user_id) where username='$USERNAME'")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED_RESULT games, and your best game took $BEST_GAME_RESULT guesses."
fi
SECRET_NUMBER=$(( RANDOM%1000 ))
NUM_OF_GUESSES=0
echo "Guess the secret number between 1 and 1000:"
read USER_GUESS
GUESS() {
  # INPUT_CHECK
  re='^[0-9]+$'
  if [[ ! $USER_GUESS =~ $re ]]
  then
    echo 'That is not an integer, guess again:'
    read USER_GUESS
  else
    # it's a number, game on!
    # increment NUM_OF_GUESSES
    ((NUM_OF_GUESSES=NUM_OF_GUESSES+1))
    #echo "Number of Guesses: $NUM_OF_GUESSES"
    # if guess is higher
    if (( $USER_GUESS > $SECRET_NUMBER )) 
    then       
      echo "It's lower than that, guess again:"
    # if guess is lower
    elif (( $USER_GUESS < $SECRET_NUMBER ))
    then
      echo "It's higher than that, guess again:"
    fi
    #echo "hint: the secret number is $SECRET_NUMBER"
    #echo "Guess No: $NUM_OF_GUESSES was $USER_GUESS"

    read USER_GUESS
    fi
}
GUESS
until (( $USER_GUESS == $SECRET_NUMBER )) 
do
  GUESS again
done
((NUM_OF_GUESSES=NUM_OF_GUESSES+1))
echo "You guessed it in $NUM_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
# insert sql data
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
INSERT_DATA=$($PSQL "INSERT INTO games(number_of_guesses, user_id) VALUES($NUM_OF_GUESSES, $USER_ID)")

