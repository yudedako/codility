require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 80%
# - Correctness 80%
# - Performance 80%
def solution(a)
  a_count = a.count
  a_first = a.uniq.sort.first
  a_last = a.uniq.sort.last

  if a_first == 1 && a_last == a_count
    return 1
  else
    return 0
  end
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal 1, solution([4,1,3,2])
  end

  def test_basic_2
    assert_equal 0, solution([4,1,3])
  end

  def test_1
    assert_equal 1, solution([1,4,3,5,2,6])
  end

  def test_2
    assert_equal 0, solution([7,4,3,5,2,6])
  end

  def test_3
    assert_equal 1, solution((1..100000).to_a)
  end

  def test_4
    assert_equal 1, solution([1])
  end

  def test_5
    assert_equal 0, solution([2])
  end
end
