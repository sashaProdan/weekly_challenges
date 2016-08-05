class Scrabble
  TABLE = { ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'] => 1,
            ['D', 'G'] => 2,
            ['B', 'C', 'M', 'P'] => 3,
            ['F', 'H', 'V', 'W', 'Y'] => 4,
            ['K'] => 5,
            ['J', 'X'] => 8,
            ['Q', 'Z'] => 10
          }.freeze

  attr_reader :word

  def initialize(word)
    @word = word
  end

  def self.score(str)
    new(str).score
  end

  def score
    return 0 unless word

    str = word.upcase.chars

    TABLE.each_with_object([]) do |(letters, digit), score|
      str.each do |char|
        score << digit if letters.include? char
      end
      score
    end.inject(0, :+)
  end
end