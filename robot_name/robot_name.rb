class Robot
  attr_accessor :name
  @@robots = []
  def initialize
    @name = random_name
    @@robots << name
  end

  def random_name
    name = ''
    2.times do
      name << ('a'..'z').to_a.sample
    end
    3.times do
      name << (1..9).to_a.sample.to_s
    end
    no_duplicate(name.upcase)
  end

  def reset
    @name = random_name
  end

  def no_duplicate(name)
    if @@robots.include? name
      reset
    else
      name
    end
  end
end
