require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 100%
# - Correctness 100%
# - Performance 100%

def solution(a)
  return (a[0] - a[1]).abs if a.size == 2

  total_sum = a.reduce(:+)
  result, tmp_l, tmp_r = 1/0.0, 0, total_sum

  (1..a.size-1).each do |idx|
    tmp_l += a[idx-1]
    tmp_r -= a[idx-1]

    tmp = (tmp_l-tmp_r).abs
    result = tmp if result > tmp
  end

  return result
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal 1, solution([3,1,2,4,3])
  end

  def test_1
    assert_equal 2, solution([3,1])
  end

  def test_2
    assert_equal 0, solution([1,1,1,1])
  end

  def test_3
    assert_equal 4, solution([1,2,3,4,3,2,1])
  end

  def test_4
    assert_equal 0, solution([-1000,-1000])
  end

  def test_5
    assert_equal 1, solution([-3,-1,-2,-4,-3])
  end

  def test_6
    assert_equal 0, solution([10,10])
  end

  def test_7
    assert_equal 0, solution([-10,-10])
  end

  def test_8
    assert_equal 3, solution([1,-2])
  end

  def test_9
    assert_equal 3, solution([-1,2])
  end

  def test_10
    assert_equal 0, solution([0,0])
  end

  def test_11
    assert_equal 1, solution([0,-1])
  end

  def test_12
    assert_equal 1, solution([-1,0])
  end

  def test_4
    assert_equal 0, solution([-1000,-1000])
  end
end
