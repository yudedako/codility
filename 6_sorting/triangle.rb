require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 10%
# - Correctness 100%
# - Performance 100%

## Correctness tests

## Performance tests

def solution(a)
  a.sort.each_cons(3) do |p, q, r|
    next if p <= 0 || q <= 0 || r <= 0
    next unless p + q > r
    next unless q + r > p
    next unless r + p > q
    return 1
  end

  return 0
end

class Tests < MiniTest::Unit::TestCase
  def test_basic_1
    assert_equal 1, solution([10,2,5,1,8,20])
  end

  def test_basic_2
    assert_equal 0, solution([10,50,5,1])
  end

  def test_1
    assert_equal 1, solution((0..100_000).to_a)
  end

  def test_2
    assert_equal 1, solution([1,-1,2,-2,5,-3,8,-4,10])
  end

  def test_3
    assert_equal 0, solution([1,-1,2,-2,5,-3,8,-4])
  end
end
