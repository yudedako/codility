require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 62%
# - Correctness 100%
# - Performance 25%

# パフォーマンスが達成できない。。。保留中

## Correctness tests

## Performance tests

# medium3 ✘TIMEOUT ERROR
# running time: 1.10 sec., time limit: 0.37 sec.

# medium4 ✘TIMEOUT ERROR
# running time: 4.16 sec., time limit: 0.39 sec.

# 10M_intersections
# 10.000.000 intersections ✘TIMEOUT ERROR
# running time: 3.85 sec., time limit: 0.39 sec.

# big1 ✘TIMEOUT ERROR
# running time: >6.00 sec., time limit: 0.50 sec.

# big2 ✘TIMEOUT ERROR
# running time: >6.00 sec., time limit: 0.54 sec.

# big3
# [0]*50000 ✘TIMEOUT ERROR
# running time: >6.00 sec., time limit: 0.55 sec.

def solution(a)
  result = 0
  a_size = a.size - 1
  a[0..a_size].each_with_index do |val, idx|
    result += (idx+1..a_size).count{|sub_idx| (idx + val) >= (sub_idx - a[sub_idx]) }
    return -1 if result > 10_000_000
  end
  return result
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal 11, solution([1,5,2,1,4,0])
  end

  def test_1
    assert_equal 1, solution([1,1])
  end

  def test_2
    assert_equal 0, solution([0,0])
  end

  def test_3
    assert_equal 19997, solution(Array.new(10_000, 1))
  end
end
