require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 75%
# - Correctness 100%
# - Performance 33%

## Correctness tests

## Performance tests

# large2
# 1 followed by an ascending sequence of ~50K elements from [0..100K], length=~50K ✘TIMEOUT ERROR
# running time: >6.00 sec., time limit: 0.48 sec.

# large_negative
# chaotic sequence of negative values from [-1M..-1], length=100K ✘TIMEOUT ERROR
# running time: >6.00 sec., time limit: 0.65 sec.

# large_negative2
# chaotic sequence of negative values from [-10..-1], length=100K ✘TIMEOUT ERROR
# running time: >6.00 sec., time limit: 0.65 sec.

# large_negative3
# sequence of -1 value, length=100K ✘TIMEOUT ERROR
# running time: >6.00 sec., time limit: 0.58 sec.

def solution(a)
  a_size = a.size - 1
  0.upto(a_size-2) do |num_p|
    (num_p+1).upto(a_size-1) do |num_q|
      (num_q+1).upto(a_size) do |num_r|
        return 1 if is_triangule?(a[num_p], a[num_q], a[num_r])
      end
    end
  end
  return 0
end

def is_triangule?(p, q, r)
  return (p + q) > r && (q + r) > p && (r + p) > q ? true : false
end

class Tests < MiniTest::Unit::TestCase
  def test_basic_1
    assert_equal 1, solution([10,2,5,1,8,20])
  end

  def test_basic_2
    assert_equal 0, solution([10,50,5,1])
  end
end
