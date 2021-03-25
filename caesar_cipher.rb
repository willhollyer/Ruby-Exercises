require 'pry'

def caesar_cipher(string, shift_factor)
  numeric_array = string.bytes
  updated_array = numeric_array.map do |character| 
    character == 32 ? 32 : character += shift_factor
  end
  
  encoded_array = updated_array.map { |character| character = character.chr }
  
  puts encoded_array.join
end

puts "What would you like to encrypt?"

string = gets.chomp 

caesar_cipher(string, 4)