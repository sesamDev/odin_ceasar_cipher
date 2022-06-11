require './lib/caesar_cipher'

describe CaesarCipher do
  describe '#encrypt' do
    it 'Works with single words' do
      cc = CaesarCipher.new
      expect(cc.encrypt('abcd', 1)).to eql('bcde')
    end
    it 'Works with spaces' do
      cc = CaesarCipher.new
      expect(cc.encrypt('abcd abcd', 1)).to eql('bcde bcde')
    end
    it 'Stays case sensitive' do
      cc = CaesarCipher.new
      expect(cc.encrypt('AbCd', 1)).to eql('BcDe')
    end
    it 'Works with single words' do
      cc = CaesarCipher.new
      expect(cc.encrypt('abcd', 1)).to eql('bcde')
    end
    it 'Can handle key input larger than the alphabet' do
      cc = CaesarCipher.new
      expect(cc.encrypt('abcd', 5000)).to eql('ijkl')
    end
  end
  describe '#decrypt' do
    it 'Works with single words' do
      cc = CaesarCipher.new
      expect(cc.decrypt('bcde', 1)).to eql('abcd')
    end
    it 'Works with spaces words' do
      cc = CaesarCipher.new
      expect(cc.decrypt('bcde bcde', 1)).to eql('abcd abcd')
    end
    it 'Stays case sensitive' do
      cc = CaesarCipher.new
      expect(cc.decrypt('BcDe', 1)).to eql('AbCd')
    end
    it 'Can handle key input larger than the alphabet' do
      cc = CaesarCipher.new
      expect(cc.decrypt('ijkl', 5000)).to eql('abcd')
    end
  end
end
