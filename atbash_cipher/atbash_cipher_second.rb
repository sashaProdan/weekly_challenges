class Atbash
  CIPHER = Hash[('a'..'z').to_a.zip(('a'..'z').to_a.reverse)]

  def self.encode(str)
    encode_word(str).each_slice(5)
                    .map {|a| a.join}
                    .join(' ')
  end

  def self.format(str)
    str.downcase.scan(/[\w+]/)
  end

  def self.encode_word(str)
    encoded = []
    format(str).each do |char|
      if CIPHER.has_key? char
        encoded << CIPHER[char]
      else
        encoded << char
      end
    end
    encoded
  end
end