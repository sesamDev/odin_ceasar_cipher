$alphabet_array = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
$ALPHABET_LEN = $alphabet_array.length - 1

def start_app()
  puts "Welcome to my Ceasar Cipher! Please choose what you want to do.\nEnter '1' to cipher a message.\nEnter '2' to decipher a message.\nEnter '3' to exit."
  puts "Please enter here: "
  choise = gets.chomp.to_i

  until choise == 1 || choise == 2 || choise == 3
    puts "You did not enter 1,2 or 3..: "
    choise = gets.chomp.to_i
  end

  if choise == 1
    cipher()
  elsif choise == 2
    decipher()
  else
    exit()
  end
end

def cipher
  
  def get_message_input
    print "Please enter the message you wish to cipher: "
    gets.chomp.downcase
  end
  
  def get_key_input
    puts "Please enter the key\nOnly number accepted: "
    input_key = gets.to_i
  end
  
  def is_a_letter?(char)
    char.match?(/[[:alpha:]]/) ? true : false
  end

  def shifted_letter(letter, key_input)
    i = $alphabet_array.index {|l| l == letter}
    key_input += i
    while key_input > $ALPHABET_LEN
      key_input -= $ALPHABET_LEN
    end
    $alphabet_array[key_input]
  end

  def cipher_message(message_input, key_input, alphabet)
    ciphered_message = ""
    message_input.each_char do |c|
      if is_a_letter?(c)
        ciphered_message += shifted_letter(c, key_input)
      else
        ciphered_message += c
      end 
    end
    ciphered_message
  end

    message = get_message_input()
    key = get_key_input()
    message_encrypted = cipher_message(message, key, $alphabet_array)
    
    puts "Here is your ciphered message: #{message_encrypted}"
    start_app()
end
 
def decipher
  def get_message_to_decipher
    print "Please enter the message you wish to decipher: "
    gets.chomp.downcase
  end

  def get_key_input
    puts "Please enter the key\nOnly number accepted: "
    input_key = gets.to_i
  end
  def is_a_letter?(char)
    char.match?(/[[:alpha:]]/) ? true : false
  end

  def shifted_letter(letter, key_input)
    i = $alphabet_array.index {|l| l == letter}
    while key_input + i > $ALPHABET_LEN
      key_input -= $ALPHABET_LEN
    end
    $alphabet_array[key_input-i]
  end


  def decipher_message(message_input, key_input, alphabet)
    ciphered_message = ""
    message_input.each_char do |c|
      if is_a_letter?(c)
        ciphered_message += shifted_letter(c, key_input)
      else
        ciphered_message += c
      end 
    end
    ciphered_message
  end

  message = get_message_to_decipher()
  key = get_key_input()
  message_decrypted = decipher_message(message, key, $alphabet_array)
  puts "Here is your deciphered message: #{message_decrypted}"
  start_app()
end

###START###
start_app()

