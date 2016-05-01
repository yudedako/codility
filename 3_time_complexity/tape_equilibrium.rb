require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 41%

# Correctness tests

# double
# two elements ✘WRONG ANSWER
# got 0 expected 2000

# simple_negative
# simple test with negative numbers, length = 5 ✘WRONG ANSWER
# got -27 expected 3

# small_random
# random small, length = 100 ✘WRONG ANSWER
# got -12771 expected 39

# small
# small elements ✘WRONG ANSWER
# got 0 expected 20


# Performance tests

# medium_random2
# random medium, numbers from -1,000 to 50, length = ~10,000 ✘WRONG ANSWER
# got -4731154 expected 196

# large_random
# random large, length = ~100,000 ✘WRONG ANSWER
# got -156854 expected 2

# large_extreme
# large test with maximal and minimal values, length = ~100,000 ✘WRONG ANSWER 
# got -1000 expected 1000
def solution(a)
  total_sum = a.reduce(:+)

  tmp = 0
  result = total_sum
  (0..a.length-2).each do |idx|
    tmp += a[idx]
    tmp2 = (tmp - (total_sum - tmp)).abs
    return 0 if tmp2.zero?

    result = tmp2 if result > tmp2
  end

  return result
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal 1, solution([3,1,2,4,3])
  end

  def test_1
    assert_equal 2, solution([3,1])
  end

  def test_2
    assert_equal 0, solution([1,1,1,1])
  end

  def test_3
    assert_equal 4, solution([1,2,3,4,3,2,1])
  end
end
