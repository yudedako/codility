require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 100%
# - Correctness 100%
# - Performance 100%

def solution(a)
  before_num = 1
  a.sort.each do |num|
    return 0 if before_num != num
    before_num = num + 1
  end
  return 1
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
