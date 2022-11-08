def select_letter(sentence, character)
  selected_chars = ''
  counter = 0

  loop do
    break if counter == sentence.size

    if sentence[counter].include?(character)
      selected_chars << sentence[counter]
    end
    
    counter += 1
  end
  selected_chars
end

question = 'How many times does a particular character appear in this sentence?'
p select_letter(question, 'a') # => "aaaaaaaa"
p select_letter(question, 't') # => "ttttt"
p select_letter(question, 'z') # => ""
