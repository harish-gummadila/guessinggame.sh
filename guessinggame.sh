#!/usr/bin/env bash

# Function to start the game
guess_files() {
  local correct_guess=$(ls -1 | wc -l)  # Count number of files in the current directory
  local guess=0
  
  echo "How many files are in the current directory?"

  # Loop until the user guesses correctly
  while true; do
    read -p "Enter your guess: " guess  # Prompt the user for their guess

    # Check if the guess is correct, too high, or too low
    if (( guess < correct_guess )); then
      echo "Too low. Try again."
    elif (( guess > correct_guess )); then
      echo "Too high. Try again."
    else
      echo "Congratulations! You guessed correctly."
      break  # Exit the loop if the guess is correct
    fi
  done
}

# Call the function to start the game
guess_files
