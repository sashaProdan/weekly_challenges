class Atbash
  def self.encode(str)
    abc = ('a'..'z').to_a

    format(str).each_with_object([]) do |char, result|
      current = abc.index(char)
      
      if abc.include? char
        result << abc.reverse[current]
      else
         result << char
      end
    end.each_slice(5).map(&:join).join(' ')
  end

  def self.format(str)
    str.downcase.scan(/[\w+]/)
  end
end