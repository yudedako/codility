require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 0%
# - Correctness 0%
# - Performance 0%

## Correctness tests

## Performance tests

def solution(a)
  return 0
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal 0, solution(0)
  end
end
