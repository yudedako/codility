require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 55%
# - Correctness 80%
# - Performance 25%

## Correctness tests

# extreme_single
# a single element ✘RUNTIME ERROR
# tested program terminated unexpectedly

## Performance tests

# large_1
# chaotic + sequence 1, 2, ..., 40000 (without minus) ✘TIMEOUT ERROR
# running time: 3.33 sec., time limit: 0.56 sec.

# large_2
# shuffled sequence 1, 2, ..., 100000 (without minus) ✘TIMEOUT ERROR
# running time: >6.00 sec., time limit: 0.62 sec.

# large_3 
# chaotic + many -1, 1, 2, 3 (with minus) ✘TIMEOUT ERROR
# running time: 2.11 sec., time limit: 0.58 sec.

def solution(a)
  (1..a.size).each do |idx|
    return idx unless a.index(idx)
  end
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal 5, solution([1,3,6,4,1,2])
  end

  def test_1
    assert_equal 1, solution([2,3,4,5,6])
  end

  def test_2
    assert_equal 1, solution([2])
  end

  def test_3
    assert_equal 3, solution([1,2,4,5,7])
  end
end
