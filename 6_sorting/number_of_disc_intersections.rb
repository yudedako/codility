require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 62%
# - Correctness 100%
# - Performance 25%

## Correctness tests

## Performance tests

# medium3 ✘TIMEOUT ERROR
# running time: 1.28 sec., time limit: 0.35 sec.

# medium4 ✘TIMEOUT ERROR
# running time: 4.84 sec., time limit: 0.38 sec.

# 10M_intersections
# 10.000.000 intersections ✘TIMEOUT ERROR
# running time: 4.38 sec., time limit: 0.39 sec.

# big1 ✘TIMEOUT ERROR
# running time: >6.00 sec., time limit: 0.50 sec.

# big2 ✘TIMEOUT ERROR
# running time: >6.00 sec., time limit: 0.54 sec.

# big3 
# [0]*50000 ✘TIMEOUT ERROR
# running time: >6.00 sec., time limit: 0.55 sec.

def solution(a)
  result = 0
  a[0..a.size-1].each_with_index do |val, idx|
    base_range_min = idx - val
    base_range_max = idx + val
    sub_idx = idx
    a[idx+1..a.size].each do |sub_val|
      sub_idx += 1
      sub_range_min = sub_idx - sub_val
      sub_range_max = sub_idx + sub_val

      next if base_range_max < sub_range_min
      next if base_range_min > sub_range_max

      result += 1
    end
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
end
