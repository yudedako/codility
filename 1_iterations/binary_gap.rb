require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test Score 100%
# - Correctness 100%
# - Performance 100%

def solution(n)
  binary_num = n.to_s(2)
  binary_array = binary_num.split('1')

  unless binary_num =~ /1\z/
    binary_array.pop
  end

  return binary_array.map{|n| n.length}.max || 0
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal 5, solution(1041)
  end

  def test_basic_2
    assert_equal 0, solution(15)
  end

  def test_1
    assert_equal 0, solution(16)
  end

  def test_2
    assert_equal 2, solution(328)
  end

  def test_3
    assert_equal 2, solution(51712)
  end
end
