require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 100%
# - Correctness 100%
# - Performance 100%

## Correctness tests

## Performance tests

def solution(a, b)
  live_fish = 0
  stack_fishs = []

  a.each_with_index do |size, idx|
    if b[idx].to_i == 1
      stack_fishs << size
      next
    end

    while stack_fishs.size > 0
      if size < stack_fishs.last
        break
      else
        stack_fishs.pop
      end
    end

    live_fish += 1 if stack_fishs.size.zero?
  end

  return live_fish + stack_fishs.size
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

  def test_7
    assert_equal 1, solution([4, 2, 3, 1], [1, 1, 0, 0])
  end

  def test_8
    assert_equal 2, solution([1, 4, 2, 3, 5], [0, 1, 1, 0, 0])
  end

  def test_9
    assert_equal 3, solution([1, 4, 2, 3, 5, 6], [0, 1, 1, 0, 0, 1])
  end
end
