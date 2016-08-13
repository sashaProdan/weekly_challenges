class Diamond
  def self.lower(letter)
    abc = ('A'..letter).to_a.reverse
    line_width = abc.size + (abc.size - 1)

    abc.each_with_object([]).with_index do |(element, bottom), index|
      line = Array.new(line_width, ' ')
      line[index] = element
      line[(line.size - 1) - index] = element

      bottom << line
    end
  end

  def self.upper(letter)
    lower(letter)[1..-1].reverse
  end

  def self.make_diamond(letter)
    (upper(letter) + lower(letter)).map(&:join).join("\n") + "\n"
  end
end