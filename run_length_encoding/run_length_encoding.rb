module RunLengthEncoding
  def self.encode(input)
    input_arr = input.chars
    result = ""
    while !input_arr.empty?
      char = input_arr[0]
      run = []
      input_arr.each { |c| break if c != char ; run << c }
      input_arr.shift(run.size)
      run.size > 1 ? result << "#{run.size}" + char : result << char
    end
    result
  end

  def self.decode(input)
    input_arr = input.scan(/[\d]+[\D]|[\D]/)
                     .map {|str| str.scan(/[\d]+|[\D]/)}
                     .each {|arr| arr.unshift(1) if arr.size == 1}
    result = ""
    input_arr.each do |arr|
      result <<  (arr.last * arr.first.to_i)
    end
    result
  end
end