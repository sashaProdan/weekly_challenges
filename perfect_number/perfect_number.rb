class RuntimeError < StandardError; end

module PerfectNumber
  def self.classify(num)
    raise RuntimeError if num <= 0

    if prime?(num) || sum_of_factors(num) < num
      'deficient'
    elsif sum_of_factors(num) == num
      'perfect'
    elsif sum_of_factors(num) > num
      'abundant'
    end
  end

  def self.prime?(num)
    (2...num).all? { |divisor| num % divisor != 0 }
  end

  def self.sum_of_factors(num)
    (1...num).select {|divisor| num % divisor == 0}.inject(0, :+)
  end
end
