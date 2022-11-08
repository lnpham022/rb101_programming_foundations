=begin
PROBLEM:
Given a string, write a method `palindrome_substrings` which returns all the substrings from a given string which are palindromes. 
Consider palindrome words case sensitive.

  INPUT: string
  OUTPUT: array of substrings

EXAMPLES:  
  GOAL: return an array of substrings that are palindromes from a string
    - palindromes are case sensitive
    - return an empty array if there are no palindromes
    - return an empty array if input is an empty string

DATA:
  string > array of substrings > array of substrings (palindromes)

ALGORITHM:
  1. create an array of substrings with 2 or more characters (helper 1)
    - initialize empty 'results' array
    - iterate through string starting at 0 to string length - 2 (starting index)
    - iterate through string starting at starting index + 1 to string length - 1 (ending index)
    - send results to 'results' array
  2. check if the substrings are palindromes (helper 2)
  3. send palindromes to new array
  4. return array
=end

def palindrome_substrings(string)
  results = []
  substrings = find_substrings(string)
  substrings.each do |substring|
    results << substring if is_palindrome?(substring)
  end
  results
end

def find_substrings(string)
  results = []
  (0..string.length - 2).each do |start_idx|
    (start_idx + 1..string.length - 1).each do |end_idx|
      results << string[start_idx..end_idx]
    end
  end
  results
end

def is_palindrome?(substring)
  substring == substring.reverse
end

p palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
p palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
p palindrome_substrings("palindrome") == []
p palindrome_substrings("") == []
