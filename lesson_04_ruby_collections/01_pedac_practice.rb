=begin
PEDAC

PROBLEM:
  Given a string, find all those substrings contained in it of at least two characters where the substring is adjacent to a substring that is the reverse of itself.

  INPUT: string
  OUTPUT: array of substrings
   
EXAMPLES:
  GOAL: return an array of substrings that are directly next to each other and are the reverse of that substring
    - substrings of substrings that qualify should be included in the returned array (ex 2)
    - returned array should NOT include duplicates (ex 3)
    - substrings must all have a unique index (ex 4)
    - return an empty array if no substrings qualify (ex 4)

DATA:
  string > array of characters > array of substrings

ALGORITHM:
  1. find all substrings with 4 or more characters (helper 1)
    - initialize empty 'results' array
    - iterate over string starting at index 0 up to string length - 4 (start_idx)
    - iterate over string starting at start_idx up to string length - 3
    - send all substrings that are even in length to 'results' array
    - return 'results'
    
  2. check which substrings are consecutive reverse images of each other (helper 2)
    - initialize empty 'results' array
    - divide substrings into equal halves
    - verify if both halves are reverse images of each other
    - send substrings to 'results' if they meet the criteria
    - if they qualify, send them to a 'results' array
    - return 'results' array
=end

def find_reverse_substrings(string)
  substrings = find_substrings(string)
  reverse_substrings(substrings)
end

def find_substrings(string)
  results = []
  (0..string.length - 4).each do |start_idx|
    (start_idx + 3..string.length - 1).each do |end_idx|
      substring = string[start_idx..end_idx]
      results << substring if substring.length.even?
    end
  end
  results
end

def reverse_substrings(substrings)
  results = []
  substrings.each do |substring|
    first_half = substring[0...substring.length / 2]
    second_half = substring[substring.length / 2...substring.length]
    if first_half.reverse == second_half
      results << first_half
      results << second_half
    end
  end
  results.uniq
end

p find_reverse_substrings('1221345543') == ["12", "21", "345", "543", "45", "54"]
p find_reverse_substrings('beeekkeeper') == ["eek", "kee", "ek", "ke"]
p find_reverse_substrings('1111111') == ["11", "111"]
p find_reverse_substrings('hellolleh') == []
