require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test Score 100%
# - Correctness 100%
# - Performance 100%

def solution(x, y, d)
  return 0 if y == x
  return 1 if (y-x) <= d

  return ((y-x)%d).zero? ? ((y-x)/d) : ((y-x)/d) + 1
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal 3, solution(10, 85, 30)
  end

  def test_1
    assert_equal 999999999, solution(1, 1000000000, 1)
  end

  def test_2
    assert_equal 0, solution(50, 50, 10)
  end

  def test_3
    assert_equal 1, solution(50, 60, 10)
  end
end
