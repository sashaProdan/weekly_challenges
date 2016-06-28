module RunLengthEncoding
  def self.encode(input)
    result = ""
    starting_index, ending_index, current_char = 0, 0, input[0]
    while ending_index < input.length
      while input[ending_index] == current_char
        ending_index += 1
      end
      run_length = ending_index - starting_index
      if run_length > 1
        result += (run_length.to_s + current_char)
      else
        result += current_char
      end
      starting_index = ending_index
      current_char = input[starting_index]
    end
    result
  end

  def self.decode(input)
    result = ""
    starting_index, ending_index = 0, 0
    while ending_index < input.length
      if input[starting_index] =~ /\d/
        while input[ending_index] =~ /\d/
          ending_index += 1
        end
        number = input[starting_index..(ending_index-1)]
        result += input[ending_index] * number.to_i
        ending_index += 1
        starting_index = ending_index
      else
        result += input[ending_index]
        starting_index += 1
        ending_index += 1
      end
    end
    result
  end
end