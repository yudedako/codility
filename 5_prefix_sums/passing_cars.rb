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
  result = 0
  tmp_count = 0
  a.each_with_index do |val, idx|
    if val.zero?
      tmp_count += 1
    else
      result += tmp_count
    end
  end
  return result > 1000000000 ? -1 : result
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal 5, solution([0,1,0,1,1])
  end

  def test_1
    assert_equal 0, solution([1,1,1,0,0,0])
  end

  def test_2
    assert_equal 9, solution([0,0,0,1,1,1])
  end
end
