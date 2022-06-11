# frozen_string_literal: true

# Encrypt and decrypt message
class CaesarCipher
  def encrypt(message, key)
    m_array = message.split('').map(&:ord)
    m_array.map! do |x|
      base = x < 91 ? 65 : 97
      x = (((x - base) + key) % 26) + base unless x == 32
      x.chr
    end
    m_array.join
  end

  def decrypt(message, key)
    m_array = message.split('').map(&:ord)
    m_array.map! do |x|
      base = x < 91 ? 65 : 97
      x = (((x - base) - key) % 26) + base unless x == 32
      x.chr
    end
    m_array.join
  end
end
