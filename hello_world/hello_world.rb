class HelloWorld
  def self.hello(str = nil)
    str ? "Hello, #{str}!" : "Hello, World!"
  end
end