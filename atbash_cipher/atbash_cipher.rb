class Atbash
  LETTERS = Hash[('a'..'z').to_a.zip(('a'..'z').to_a.reverse)]
  NUMBERS = Hash[('0'..'9').to_a.zip(('0'..'9').to_a)]
  CIPHER = LETTERS.merge(NUMBERS)

  def self.encode(word)
    if word.size <= 5
      CIPHER.values_at(*word.downcase.gsub(/\W/, '').chars).join
    elsif word.size > 5
      edit(word)
    end
  end

  def self.edit(word)
    arr = CIPHER.values_at(*word.downcase.gsub(/\W/, '').chars)
      arr.each_slice(5).map do |s|
        s.join('')
      end
    .join(' ')
  end
end
