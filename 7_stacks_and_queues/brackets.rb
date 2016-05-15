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
  nests_pattern = { '(' => ')', '{' => '}', '[' => ']' }
  before_nests = []
  s.chars.each do |char|
    if nests_pattern.keys.include?(char)
      before_nests << char
    else
      return 0 unless nests_pattern[before_nests.pop] == char
    end
  end
  return before_nests.size > 0 ? 0 : 1
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal 1, solution('{[()()]}')
  end

  def test_basic_2
    assert_equal 0, solution('([)()]')
  end

  def test_1
    assert_equal 1, solution('{}')
  end

  def test_2
    assert_equal 0, solution('{')
  end
end
