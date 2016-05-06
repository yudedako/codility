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
  return a.group_by{|n| n}.size
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal 3, solution([2,1,1,2,3,1])
  end
end
