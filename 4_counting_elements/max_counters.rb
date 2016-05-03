require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 88%
# - Correctness 100%
# - Performance 80%

## Correctness tests

## Performance tests

# extreme_large
# all max_counter operations ✘TIMEOUT ERROR
# running time: >6.00 sec., time limit: 0.83 sec.

def solution(n, a)
  result = Array.new(n, 0)

  max_counter = 0
  a.each do |val|
    if val > n
      result = Array.new(n, max_counter)
    else
      result[val-1] += 1
      max_counter = result[val-1] if result[val-1] > max_counter
    end
  end

  return result
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal [3,2,2,4,2], solution(5, [3,4,4,6,1,4,4])
  end

  def test_1
    assert_equal [1], solution(1, [1])
  end

  def test_2
    assert_equal [1,1], solution(2, [1,2])
  end

  def test_3
    assert_equal [1,1], solution(2, [1,3])
  end

  def test_4
    assert_equal [1,2], solution(2, [1,3,2])
  end
end
