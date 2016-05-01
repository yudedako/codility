require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 50%
# Correctness: 20%
# Performance: 80%

# Correctness tests

# empty_and_single
# empty list and single element ✘WRONG ANSWER
# got 0 expected 1

# missing_first_or_last
# the first or the last element is missing ✘WRONG ANSWER
# got 0 expected 6
# 1. 0.081 s WRONG ANSWER,  got 0 expected 6
# 2. 0.081 s OK
#
# single
# single element ✘WRONG ANSWER
# got 0 expected 2

# double
# two elements ✘WRONG ANSWER
# got 0 expected 3

# Performance tests

# large_range
# range sequence, length = ~100,000 ✘WRONG ANSWER
# got 0 expected 100001
def solution(a)
  result = 0
  a.sort.each_with_index do |val, idx|
    next if val == idx + 1
    result = idx + 1
    break
  end
  return result
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal 4, solution([2,3,1,5])
  end

  def test_1
    assert_equal 1, solution([2,3,4,5])
  end

  def test_2
    assert_equal 5, solution([6,4,3,2,1])
  end

  def test_3
    assert_equal 2, solution([1,3])
  end
end
