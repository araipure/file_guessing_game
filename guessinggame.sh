echo "Welcome to Guessing game!!!"
echo "You need to guess how many files are in the current directory until you guess the correct answer."
 
function ask {
  echo "How many files are in the current directory ?"
  read guess 
  number_of_files=$(ls -1 | wc -l)
}

ask
while [[ $guess -ne $number_of_files ]]
do 
  if [[ $guess -ge $number_of_files ]] 
  then
    echo "Please guess smaller number."
  else [[ $guess -le $number_of_files ]]
    echo "Please guess bigger number." 
  fi
  ask
done

echo "Congratulation you guess the right number !!!"
echo "There are $number_of_files files in the current directory, which are: "
echo "--------------" && ls

