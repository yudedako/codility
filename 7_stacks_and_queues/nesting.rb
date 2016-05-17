require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 100%
# - Correctness 100%
# - Performance 100%

## Correctness tests

## Performance tests

def solution(s)
  before_length = s.length
  return 0 if before_length.odd?

  while s.length > 0
    s.gsub!('()', '')
    break if before_length == s.length
    before_length = s.length
  end

  return before_length.zero? ? 1 : 0
end

class Tests < MiniTest::Unit::TestCase
  def test_basic_1
    assert_equal 1, solution('(()(())())')
  end

  def test_basic_2
    assert_equal 0, solution('())')
  end
end
