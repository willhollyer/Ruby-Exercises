def substrings(string, array)
  matches = {}

  array.each do |substring| 
    count = string.downcase.scan(substring).length
    counter = matches[substring].to_i
    matches[substring] = count + counter unless count == 0
    end

    matches
  end

  array = ["hello", "howdy", "hola", "hellothere", "howdy", "hello", "hey"]

puts substrings("howdy and hello and hola", array)