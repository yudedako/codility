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
  a_sort = a.sort
  tmp_1 = a_sort.last(3).inject(:*)
  tmp_2 = a_sort.first(2).inject(:*) * a_sort.last

  return tmp_1 > tmp_2 ? tmp_1 : tmp_2
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal 60, solution([-3,1,2,-2,5,6])
  end

  def test_1
    assert_equal 120, solution([3,5,4,-2,-6,-4])
  end

  def test_2
    assert_equal 999000000, solution((-1000..1000).to_a)
  end
end
