alphabetArray = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

#Cipher
#First get the input string of the text to cipher
def getInput
  puts "Please enter the message you wish to cipher: "
  p input_message = gets.gsub("\n", "")
end

# input_message = getInput.gsub("\n", "")
# p input_message
def isInputValid?(input)
  input.each_char do |c|
    if !c.match?(/[[:alpha:]]/)
      p "\'#{c}' is not a letter.., please enter message again: "
      getInput
    end
  end
end

isInputValid?(getInput)
# p input_message

#Then get the input of the key, make into an int
#Take every character in input string and shift it by the number of the key
#x steps up in the alphabet
#Print ciphered message



#Decipher
#First get the input string of the text to cipher
#Make sure that user only inputted letters
#Then get the input of the key, make into an int
#Take every character in input string and shift it by the number of the key
#x steps down in the alphabet
#Print deciphered message