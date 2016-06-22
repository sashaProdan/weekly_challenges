#!/usr/bin/env ruby
begin
  gem 'minitest', '>= 5.0.0'
  require 'minitest/autorun'
  require_relative 'hello_world'
rescue Gem::LoadError => e
  puts "\nMissing Dependency:\n#{e.backtrace.first} #{e.message}"
  puts 'Minitest 5.0 gem must be installed for the xRuby track.'
rescue LoadError => e
  puts "\nError:\n#{e.backtrace.first} #{e.message}"
  puts DATA.read
  exit 1
end

# Test data version:
# deb225e Implement canonical dataset for scrabble-score problem (#255)

class HelloWorldTest < Minitest::Test
  def test_no_name
    assert_equal 'Hello, World!', HelloWorld.hello
  end

  def test_sample_name
    assert_equal 'Hello, Alice!', HelloWorld.hello('Alice')
  end

  def test_other_sample_name
    assert_equal 'Hello, Bob!', HelloWorld.hello('Bob')
  end
end



