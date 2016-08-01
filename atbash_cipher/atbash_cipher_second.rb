class Atbash
  CIPHER = Hash[('a'..'z').to_a.zip(('a'..'z').to_a.reverse)]

  def self.encode(str)
    initial_encode(str).each_slice(5)
                       .map(&:join)
                       .join(' ')
  end

  def self.format(str)
    str.downcase.scan(/[\w+]/)
  end

  def self.initial_encode(str)
    encoded = []
    format(str).each do |char|
      CIPHER.has_key?(char) ? (encoded << CIPHER[char]) : (encoded << char)
    end
    encoded
  end
end