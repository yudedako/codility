require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 100%
# - Correctness 100%
# - Performance 100%

## Correctness tests

## Performance tests

def solution(h)
  box_count, before_size, min_size_array = 0, nil, []
  h.each do |height|
    next if before_size == height
    before_size = height

    if min_size_array.size > 0
      next if min_size_array.last == height

      if min_size_array.last > height
        next_flag = false
        while min_size_array.last > height
          min_size_array.pop
          break if min_size_array.size.zero?
          if min_size_array.last == height
            next_flag = true
            break
          end
        end
        next if next_flag
      end
    end

    min_size_array << height
    box_count += 1
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

  def test_5
    assert_equal 4, solution([1,2,3,2,3,2,1])
  end

  def test_6
    assert_equal 3, solution([2,1,2,1])
  end
end
