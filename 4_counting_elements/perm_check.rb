require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 70%
# - Correctness 100%
# - Performance 40%

## Performance tests

# antiSum2
# total sum is correct, but it is not a permutation, N = ~100,000 ✘TIMEOUT ERROR
# running time: >6.00 sec., time limit: 0.62 sec.

# large_permutation
# permutation + one element occurs three times, N = ~100,000 ✘TIMEOUT ERROR
# running time: >6.00 sec., time limit: 0.62 sec.

# large_range 
# sequence 1, 2, ..., N, N = ~100,000 ✘TIMEOUT ERROR
# running time: >6.00 sec., time limit: 0.61 sec.

def solution(a)
  (1..a.size).to_a.each do |idx|
    return 0 unless a.index(idx)
  end
  return 1
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal 1, solution([4,1,3,2])
  end

  def test_basic_2
    assert_equal 0, solution([4,1,3])
  end

  def test_1
    assert_equal 1, solution([1,4,3,5,2,6])
  end

  def test_2
    assert_equal 0, solution([7,4,3,5,2,6])
  end

  def test_3
    assert_equal 1, solution((1..100000).to_a)
  end

  def test_4
    assert_equal 1, solution([1])
  end

  def test_5
    assert_equal 0, solution([2])
  end
end
