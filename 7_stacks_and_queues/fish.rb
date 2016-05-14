require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 37%
# - Correctness 50%
# - Performance 25%

## Correctness tests

# extreme_small
# 1 or 2 fishes ✘WRONG ANSWER
# got 2 expected 1

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
  live_up_fish, live_down_fish = 0, 0
  up_fish, down_fish = nil, nil

  0.upto(a.size-1) do |idx|
    if b[idx].zero?
      up_fish = a[idx] if idx > 0
      live_up_fish += 1
    else
      down_fish = a[idx] if idx > 0
      live_down_fish += 1
    end

    next unless up_fish && down_fish

    if up_fish > down_fish
      live_down_fish -= 1
      down_fish = nil
    else
      live_up_fish -= 1
      up_fish = nil
    end
  end

  return live_up_fish + live_down_fish
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal 2, solution([4,3,2,1,5], [0,1,0,0,0])
  end
end
