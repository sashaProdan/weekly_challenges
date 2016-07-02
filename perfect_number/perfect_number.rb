class RuntimeError < StandardError; end
module PerfectNumber

  def self.classify(num)
    raise RuntimeError if num < 0
    if prime?(num)
      'deficient'
    else
      if sum_of_factors(num) == num
        'perfect'
      elsif sum_of_factors(num) > num
        'abundant'
      elsif sum_of_factors(num) < num
        'deficient'
      end
    end
  end

  def self.factors(num)
    (1...num).select {|divisor| num % divisor == 0}
  end

  def self.prime?(num)
    (2...num).all? { |divisor| num % divisor != 0 }
  end

  def self.sum_of_factors(num)
    factors(num).inject(0, :+)
  end
end
