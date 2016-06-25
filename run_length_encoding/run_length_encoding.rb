class RunLengthEncoding

  def self.encode(input)
    input_arr = input.chars
    str = ""
    while !input_arr.empty?
      char = input_arr.first
      run = []
      input_arr.each { |c| break if c != char ; run << c }
      input_arr.shift(run.size)
      run.size > 1 ? str << "#{run.size}" + char : str << char
    end
    str
  end

  def self.decode(input)
  end
end