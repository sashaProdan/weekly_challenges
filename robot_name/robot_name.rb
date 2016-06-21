class Robot
  attr_reader :name
  @@robots = []
  def initialize
    @name = random_name
    @@robots << @name
  end

  def random_name
    name = ''
    2.times { name << ('a'..'z').to_a.sample }
    3.times { name << ('1'..'9').to_a.sample }
    no_duplicate(name.upcase)
  end

  def reset
    @name = random_name
    @@robots << @name
  end

  def no_duplicate(name)
    (@@robots.include? name) ? reset : name
  end
end
