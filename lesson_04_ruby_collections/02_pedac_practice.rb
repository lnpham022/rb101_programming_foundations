=begin
PEDAC

PROBLEM:
  Given a string, write a method change_me which returns the same string but with all the words in it that are palindromes uppercased.

  INPUT: string
  OUTPUT: string with uppercased palindromes
   
EXAMPLES:
  GOAL: return the same string with all palindromes within the string uppercased
    - palindrome is a string that is the exact same in reverse
    - return string as is if there's no palindrome
    - empty string returns an empty string
    - uppercased words stay uppercased even if they are not a palindrome

DATA: 
  string > array of strings > string

ALGORITHM:
  1. separate each word in the string to an array
  2. check if any word is a palindrome (helper 1)
    - iterate through array of words
    - check if the word is the same as its reverse
    - if it's a palindrome, uppercase it
  4. combine words back into a string
  5. return string
=end

def change_me(string)
  words = string.split
  string = is_palindrome?(words)
  string.join(' ')
end

def is_palindrome?(words)
  words.each do |word|
    if word == word.reverse
      word.upcase!
    end
  end
  words
end

p change_me("We will meet at noon") == "We will meet at NOON"
p change_me("No palindromes here") == "No palindromes here"
p change_me("") == ""
p change_me("I LOVE my mom and dad equally") == "I LOVE my MOM and DAD equally"
