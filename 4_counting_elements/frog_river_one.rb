require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 18%
# Correctness 33%
# Performance 0%

## Correctness tests

# simple
# simple test ✘WRONG ANSWER
# got 1 expected 4

# extreme_frog
# frog never across the river ✘WRONG ANSWER
# got 3 expected -1

# small_random1
# 3 random permutation, X = 50 ✘WRONG ANSWER
# got 26 expected 83

# small_random2
# 5 random permutation, X = 60 ✘WRONG ANSWER
# got 37 expected 153

## Performance tests

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
  return a.index(x) || -1
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal 6, solution(5, [1,3,1,4,2,3,5,4])
  end
end
