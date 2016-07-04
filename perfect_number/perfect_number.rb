module PerfectNumber
  def self.classify(num)
    raise RuntimeError, "Please enter a positive number!" if num < 2

    sum_of_factors = factors(num).inject(:+)
    if sum_of_factors < num
      'deficient'
    elsif sum_of_factors == num
      'perfect'
    elsif sum_of_factors > num
      'abundant'
    end
  end

  def self.factors(num)
    (1...num).select {|divisor| num % divisor == 0}
  end
end