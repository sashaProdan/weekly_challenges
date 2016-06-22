class Hamming
  def self.compute(strand1, strand2)
    Hamming.equal_size(strand1, strand2)
    sequence = strand1.chars.zip strand2.chars
    distance = 0
    sequence.each do |arr|
      distance += 1 if arr[0] != arr[1]
    end
    distance
  end

  def self.equal_size(str1, str2)
    raise ArgumentError if str1.size != str2.size
  end
end
