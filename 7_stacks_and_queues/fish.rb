require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 50%
# - Correctness 75%
# - Performance 25%

## Correctness tests

# simple2
# simple test ✘WRONG ANSWER
# got 6 expected 1

## Performance tests

# medium_random
# small medium test, N = ~5,000 ✘WRONG ANSWER
# got 2498 expected 106

# large_random
# large random test, N = ~100,000 ✘WRONG ANSWER
# got 49859 expected 572

# extreme_range1
# all except one fish flowing in the same direction ✘WRONG ANSWER
# got 99999 expected 1

def solution(a, b)
  live_up_fish = 0
  stack_fishs = []

  a.each_with_index do |size, idx|
    if b[idx].to_i == 1
      stack_fishs << size
      next
    end

    if stack_fishs.size > 0
      if size < stack_fishs.last
        next
      else
        stack_fishs.pop
      end
    end
    live_up_fish += 1
  end

  return live_up_fish + stack_fishs.size
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal 2, solution([4,3,2,1,5], [0,1,0,0,0])
  end

  def test_1
    assert_equal 1, solution([1], [0])
  end

  def test_2
    assert_equal 1, solution([1], [1])
  end

  def test_3
    assert_equal 2, solution([1, 2], [0, 0])
  end

  def test_4
    assert_equal 2, solution([1, 2], [1, 1])
  end

  def test_5
    assert_equal 1, solution([1, 2], [1, 0])
  end

  def test_6
    assert_equal 2, solution([1, 2], [0, 1])
  end
end
