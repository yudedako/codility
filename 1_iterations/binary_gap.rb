require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test Score 80%

# trailing_zeroes
# n=6=110_2 and n=328=101001000_2 ✘WRONG ANSWER
# got 1 expected 0

# power_of_2
# n=5=101_2, n=16=2**4 and n=1024=2**10 ✘WRONG ANSWER
# got 4 expected 0

# medium1
# n=51712=110010100000000_2 and n=20=10100_2
# got 9 expected 2

def solution(a)
  return a.to_s(2).split('1').map{|n| n.length}.max || 0
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal 5, solution(1041)
  end

  def test_basic_2
    assert_equal 0, solution(15)
  end
end
