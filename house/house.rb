class House

  def self.recite
    text = pieces.reverse
    str = ''
    counter = 0
    while counter < text.length
      s = text[0..counter].reverse.map { |arr| arr.join("\n") }
      str << "This is #{s.join(' ')}.\n\n"
      counter += 1
    end
    str - str.chars.last
  end

  private

  def self.pieces
    [
      ['the horse and the hound and the horn', 'that belonged to'],
      ['the farmer sowing his corn', 'that kept'],
      ['the rooster that crowed in the morn', 'that woke'],
      ['the priest all shaven and shorn', 'that married'],
      ['the man all tattered and torn', 'that kissed'],
      ['the maiden all forlorn', 'that milked'],
      ['the cow with the crumpled horn', 'that tossed'],
      ['the dog', 'that worried'],
      ['the cat', 'that killed'],
      ['the rat', 'that ate'],
      ['the malt', 'that lay in'],
      ['the house that Jack built']
    ]
  end
end

p House.recite
