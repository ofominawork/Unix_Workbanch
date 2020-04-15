function guess {
echo "Guess how many files in the current folder? Please type the number "
read user_guess
file_number=$(find . -type f -maxdepth 1 | wc -l)
isnumber
while [[ $user_guess -ne $file_number ]]
do
  if [[ $file_number -gt $user_guess ]]
  then
    echo "The number is too small. Please give the new number"
  else
    echo "The number is too big. Please give the new number"
  fi
read user_guess
isnumber
done
}
function isnumber {
echo "$user_guess" | egrep "^[0-9]+$" > /dev/null
while [[ $? -eq 1 ]]
do
 echo "The number of files should be positive integer. Please type positive integer number"
 read user_guess
 echo "$user_guess" | egrep "^[0-9]+$" > /dev/null
done
}
guess
echo "You got it! $user_guess is a correct number"
