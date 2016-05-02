require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 81%
# Correctness 100%
# Performance 60%

## Performance tests

# large_permutation
# permutation tests ✘WRONG ANSWER
# got 16760 expected 90999

# large_range
# arithmetic sequences, X = 30,000 ✘WRONG ANSWER
# got 25000 expected 35000
def solution(x, a)
  max_sec = 0
  (1..x).each do |time|
    tmp_time = a.index(time)

    return -1 if tmp_time.nil?
    max_sec = tmp_time if max_sec < tmp_time
  end

  return max_sec
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal 6, solution(5, [1,3,1,4,2,3,5,4])
  end

  def test_1
    assert_equal 5, solution(5, [1,3,1,4,5,2,3,5,4])
  end

  def test_2
    assert_equal -1, solution(5, [1,2,4,5])
  end
end
