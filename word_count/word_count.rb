class Phrase
  def initialize(string)
    @phrase = string
  end

  def word_count
    word_array.inject({}) do |counts, (word, count)|
      counts[word] = count
      counts
    end
  end
 
  private

  def word_split
    @phrase.scan(/\b[\w']+\b/).flatten.map(&:downcase)
  end

  def word_array
    word_split.map do |word|
      [word, word_split.count(word)]
    end.uniq
  end
end
