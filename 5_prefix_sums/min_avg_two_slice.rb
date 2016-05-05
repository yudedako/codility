require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 100%
# - Correctness 100%
# - Performance 100%

## Correctness tests

## Performance tests

def solution(a)
  result = 0
  min_avg = (a[0] + a[1]) / 2.0

  (2..a.size-1).each do |idx|
    tmp_avg_1 = (a[idx-1] + a[idx]) / 2.0
    tmp_avg_2 = (a[idx-2] + a[idx-1] + a[idx]) / 3.0

    if tmp_avg_1 < min_avg
      result = idx - 1
      min_avg = tmp_avg_1
    end

    if tmp_avg_2 < min_avg
      result = idx - 2
      min_avg = tmp_avg_2
    end
  end

  return result
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal 1, solution([4,2,2,5,1,5,8])
  end
end
