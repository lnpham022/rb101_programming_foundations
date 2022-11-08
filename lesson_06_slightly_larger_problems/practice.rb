=begin
PROBLEM:
  - bank of switches, numbers 1 - n
    - each switch is connected to exactly one light
    - each switch is initially off
  - you walk down and toggle each switch 
  - on second pass, you toggle every other switch (2, 4, 6)
  - on third pass, you toggle every third switch (3, 6, 9)
  - repeat this process until n repetitions has been reached

  INPUT: integer (total number of switches)
  OUTPUT: array (which lights are on)

EXAMPLES:
  GOAL: Write a method that returns an array that identifies which lights are on after n repetitions

DATA:
integer > hash > array

ALGORITHM:
  1. Create hash for each light: 'off' as value (helper method)
    - {1=>"on", 2=>"off", 3=>"off", 4=>"off", 5=>"off"}
  2. Determine pass
    - pass 2
    - only change those where key % pass == 0
  3. Loop through switching lights on and off (helper method)
  4. Return 'on' keys in an array

=end

# initializes lights hash
def initialize_lights(number)
  lights_hash = (1..number).each_with_object({}) { |num, hash| hash[num] = 'off' }
  lights_hash
end

# returns on lights array
def on_lights(hash)

end

# switches lights on and off
def switch_lights(hash, pass)
  hash.each do |k, v|2                            Z
    if k % pass == 0
      hash[k] == 'off' ? hash[k] = 'on' : hash[k] = 'off'
    end
  end

end

def lights(number)
  lights_hash = initialize_lights(number)
  pass = 1

  number.times { |hash| on_lights(hash, pass) }

  on_lights(lights_hash)
end

p lights(5) # [1, 4]
# lights(10) # [1, 4, 9]
