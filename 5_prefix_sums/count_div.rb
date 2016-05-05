require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 0%
# - Correctness 0%
# - Performance 0%

## Correctness tests

## Performance tests

def solution(a, b, k)
  if b == a
    return (a % k).zero? ? 1 : 0
  else
    return ((b - a) / k) + 1
  end
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal 3, solution(6, 11, 2)
  end

  def test_1
    assert_equal 20, solution(11, 345, 17)
  end

  def test_2
    assert_equal 1, solution(11, 11, 11)
  end

  def test_3
    assert_equal 20, solution(1, 20, 1)
  end

  def test_4
    assert_equal 1, solution(0, 0, 1)
  end

  def test_5
    assert_equal 2000_000_001, solution(0, 2000_000_000, 1)
  end

  def test_6
    assert_equal 2, solution(0, 2000_000_000, 2000_000_000)
  end

  def test_7
    assert_equal 0, solution(5, 5, 2)
  end
end
