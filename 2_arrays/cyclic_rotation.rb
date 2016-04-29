require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test Score 100%
def solution(a, k)
  return a if a.length.zero?

  rotation_num = k % a.length
  return rotation_num.zero? ? a : a.rotate(rotation_num * -1)
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal [9, 7, 6, 3, 8], solution([3, 8, 9, 7, 6], 3)
  end
end
