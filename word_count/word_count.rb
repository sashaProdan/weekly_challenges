class Phrase
  def initialize(string)
    @phrase = string.scan(/\b[\w']+\b/).map(&:downcase)
  end

  def word_count
    @phrase.each_with_object(Hash.new(0)) do |word, hash|
      hash[word] += 1
    end
  end
end

