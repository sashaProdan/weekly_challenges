class Atbash
  LETTERS = Hash[('a'..'z').to_a.zip(('a'..'z').to_a.reverse)]
  NUMBERS = Hash[('0'..'9').to_a.zip(('0'..'9').to_a)]
  CIPHER = LETTERS.merge(NUMBERS)

  def self.encode(string)
    string.size <= 5 ? encode_word(string).join : edit(string)
  end

  def self.edit(string)
    encode_word(string).each_slice(5).map { |s| s.join('') }.join(' ')
  end

  def self.encode_word(string)
    CIPHER.values_at(*string.downcase.gsub(/\W/, '').chars)
  end
end
