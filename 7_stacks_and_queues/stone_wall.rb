require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 42%
# - Correctness 60%
# - Performance 33%

## Correctness tests

# simple2 ✘WRONG ANSWER
# got 4 expected 5

# simple3 ✘WRONG ANSWER
# got 9 expected 8

## Performance tests

# medium1 ✘WRONG ANSWER
# got 122 expected 117

# medium2 ✘WRONG ANSWER
# got 380 expected 357

# medium3 ✘WRONG ANSWER
# got 422 expected 403

# medium4 ✘WRONG ANSWER
# got 479 expected 468

# large_up_to_20 ✘WRONG ANSWER
# got 85934 expected 81986

# large_up_to_100 ✘WRONG ANSWER 
# got 96791 expected 94813

def solution(h)
  box_count = 0
  before_size = nil
  min_size_array = []
  h.each do |height|
    next if before_size == height
    if min_size_array.size > 0
      if min_size_array.last == height
        next
      elsif min_size_array.last > height
        next_flag = false
        while min_size_array.last > height
          before_size = min_size_array.pop
          if min_size_array.last == height
            next_flag = true
            break
          end
          break if min_size_array.size.zero?
        end
        next if next_flag
      else
        min_size_array << height
      end
    else
      min_size_array << height
    end

    box_count += 1
    before_size = height
  end

  return box_count
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal 7, solution([8,8,5,7,9,8,7,4,8])
  end

  def test_1
    assert_equal 2, solution([2,1])
  end

  def test_2
    assert_equal 2, solution([1,2])
  end

  def test_3
    assert_equal 1, solution([1,1])
  end

  def test_4
    assert_equal 2, solution([1,2,1])
  end
end
