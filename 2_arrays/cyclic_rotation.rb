require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test Score 87%

# extreme_empty
# empty array ✘RUNTIME ERROR
# tested program terminated unexpectedly

def solution(a, k)
  rotation_num = k % a.length
  return rotation_num.zero? ? a : a.rotate(rotation_num * -1)
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal [9, 7, 6, 3, 8], solution([3, 8, 9, 7, 6], 3)
  end
end
