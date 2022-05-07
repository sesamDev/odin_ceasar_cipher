alphabetArray = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

#Cipher
#First get the input string of the text to cipher
def get_message_input
  puts "Please enter the message you wish to cipher\nOnly letters accepted: "
  gets.gsub("\n", "").downcase
end

# p input_message
def is_input_message_only_letters?(message_input)
  message_input.each_char do |c|
    if !c.match?(/[[:alpha:]]/)
      p "\'#{c}' is not a letter.., please enter message again: "
      get_message_input
    end
  end
end

message = get_message_input()

# p input_message

#Then get the input of the key, make into an int
def get_key_input
  puts "Please enter the key\nOnly number accepted: "
  p input_key = gets.to_i
end
key = get_key_input

#Take every character in input string and shift it by the number of the key
#x steps up in the alphabet

def cipher_message?(message_input, key_input, alphabet)
  ciphered_message = ""
  message_input.each_char do |c|
    i = alphabet.index {|l| l == c}
    ciphered_message += alphabet[i+key_input]
    end
  return ciphered_message
end
# Print ciphered message
p cipher_message?(message, key, alphabetArray)



#Decipher
#First get the input string of the text to cipher
#Make sure that user only inputted letters
#Then get the input of the key, make into an int
#Take every character in input string and shift it by the number of the key
#x steps down in the alphabet
#Print deciphered message