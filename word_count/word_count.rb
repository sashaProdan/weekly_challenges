class Phrase
  def initialize(string)
    @phrase = string
  end

  def word_count
    word_split.each_with_object(Hash.new(0)) do |word, hash|
      hash[word] += 1
    end
  end
 
  private

  def word_split
    @phrase.scan(/\b[\w']+\b/).map(&:downcase)
  end
end
