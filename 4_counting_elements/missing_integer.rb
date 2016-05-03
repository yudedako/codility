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
  check_array = a.group_by{|n| n }
  (1..100001).each do |idx|
    return idx unless check_array[idx]
  end
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal 5, solution([1,3,6,4,1,2])
  end

  def test_1
    assert_equal 1, solution([2,3,4,5,6])
  end

  def test_2
    assert_equal 1, solution([2])
  end

  def test_3
    assert_equal 3, solution([1,2,4,5,7])
  end

  def test_4
    assert_equal 99998, solution((1..99997).to_a.concat((99999..100000).to_a))
  end
end
