require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test Score 100%
# - Correctness 100%
# - Performance 100%
def solution(a)
  return a.group_by{|n| n}.each_value{|v| return v.first if v.count.odd?}
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal 7, solution([9,3,9,3,9,7,9])
  end

  def test_1
    assert_equal 2, solution([1,2,1])
  end

  def test_2
    assert_equal 2, solution([1,2,2,2,1])
  end
end
