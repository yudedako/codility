require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 62%
# - Correctness 33%
# - Performance 80%

## Correctness tests

# negative_match
# invalid structures ✘WRONG ANSWER
# got 1 expected 0

# simple_grouped
# simple grouped positive and negative test, length=22 ✘WRONG ANSWER
# got 1 expected 0

## Performance tests

# large2 
# simple large negative test, 10K+1 ('s followed by 10K )'s + )( + () ✘WRONG ANSWER
# got 1 expected 0

def solution(s)
  nests_pattern = { '(' => ')', '{' => '}', '[' => ']' }
  before_nests = []

  s.chars.each do |char|
    if nests_pattern.keys.include?(char)
      before_nests << char
    elsif nests_pattern.values.include?(char)
      return 0 if nests_pattern[before_nests.last] != char
      before_nests.pop
    end
  end
  return 1
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal 1, solution('{[()()]}')
  end

  def test_basic_2
    assert_equal 0, solution('([)()]')
  end
end
