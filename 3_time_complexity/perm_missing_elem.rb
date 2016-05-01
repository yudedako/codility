require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 70%
# Correctness: 100%
# Performance: 40%

# Performance tests

# large_range
# range sequence, length = ~100,000 ✘TIMEOUT ERROR
# running time: >6.00 sec., time limit: 0.53 sec.

# large1
# large test, length = ~100,000 ✘TIMEOUT ERROR
# running time: >6.00 sec., time limit: 0.55 sec.

# large2
# large test, length = ~100,000 ✘TIMEOUT ERROR
# running time: 1.30 sec., time limit: 0.47 sec.
def solution(a)
  (1..100001).each{|i| return i unless a.index(i) }
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

  def test_4
    assert_equal 1, solution([2])
  end

  def test_5
    assert_equal 1, solution([])
  end
end
