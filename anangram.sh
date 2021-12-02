#!/bin/bash -x
prep() {
	fold -w1 <<< "${1//[^[:alnum:]]/}" | tr '[:upper:]' '[:lower:]' | sort | tr -d '\n'
}

# function to check if given 2 arguments are anagrams
read -p "enter a first word: " word1
read -p "enter a second word: " word2
result1=$(prep "$word1")
result2=$(prep "$word2")
if [[ $result1 = $result2 ]]
then
	echo "word is anagram"
else
	echo "word is not anagram"
fi
