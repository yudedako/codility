require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 54%
# Correctness 100%
# Performance 0%


# medium_random
# 6 and 2 random permutations, X = ~5,000 ✘WRONG ANSWER
# got 475 expected 13472
# medium_range

# arithmetic sequences, X = 5,000 ✘WRONG ANSWER
# got 4000 expected 5999

# large_random
# 10 and 100 random permutation, X = ~10,000 ✘WRONG ANSWER
# got 23901 expected 60932

# large_permutation
# permutation tests ✘WRONG ANSWER
# got 16760 expected 90999

# large_range
# arithmetic sequences, X = 30,000 ✘WRONG ANSWER
# got 25000 expected 35000
def solution(x, a)
  leafs = []
  a.each_with_index do |val, idx|
    leafs << val if val <= x
    return idx if x == leafs.uniq.size
  end

  return -1
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal 6, solution(5, [1,3,1,4,2,3,5,4])
  end

  def test_1
    assert_equal 7, solution(5, [1,3,1,4,5,2,3,5,4])
  end

  def test_2
    assert_equal -1, solution(5, [1,2,4,5])
  end
end
