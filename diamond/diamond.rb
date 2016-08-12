class Diamond
  def self.lower(letter)
    abc = ('A'..letter).to_a.reverse
    width = abc.size + (abc.size - 1)
    bottom = []

    abc.each_with_index do |element, index|
      str = Array.new(width, ' ')
      str[index] = element
      str[(str.size - 1) - index] = element

      bottom << str
    end
    bottom
  end

  def self.upper(letter)
    lower(letter)[1..-1].reverse
  end

  def self.make_diamond(letter)
    (upper(letter) + lower(letter)).map(&:join).join("\n") + "\n"
  end
end