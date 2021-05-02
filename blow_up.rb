##
# The blow_up porgram gets inputs like a3tx2z and translates them to strings of
# letters that are defined by their numbers also known as blowing them up
# (a3tx2z would be attttxzzz) if it was blown up
#
# @author  Cameron Teed
# @version 1.0
# @since   2021-05-02
# frozen_string_literal: true

# Begins loop
begin
  # Asks for user input
  puts 'Enter a String with numbers next to letters such as (4a5d6f):'

  # Gets user input
  user_string = gets.chomp
  # Create blank array because a string gives a weird error
  final_string = []

  # Sets the counter to 0
  first_counter = 0

  # Begins loop that runs through all the charecters in the string
  while first_counter != (user_string.size)
    # Runs if the charecter is a number
    if user_string[first_counter, 1].match?(/\A-?\d+\Z/)
      # Sets the second counter to zero
      second_counter = 0
      # Starts loop that runs the amount the number it found was
      while user_string[first_counter, 1].to_i != second_counter
        # Adds the letter to the array
        final_string << user_string[first_counter + 1, 1]
        # Adds one to the second counter
        second_counter += 1
      end
    else
      # Adds letter to the array if no number is found
      final_string << user_string[first_counter, 1]
    end
    # Adds one to the counter
    first_counter += 1
  end
  # Prints out the blown up string
  puts
  puts "Blown-up string; #{final_string.join('')}"
  puts
  puts 'Done'
rescue StandardError
  # Catches Errors
  puts 'Please enter a valid input'
end
