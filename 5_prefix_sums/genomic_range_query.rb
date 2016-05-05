require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 75%
# - Correctness 100%
# - Performance 100%

## Correctness tests

## Performance tests

def solution(s, p, q)
  result = []

  (0..p.size-1).each do |idx|
    buff = s[p[idx]..q[idx]]
    if buff.index('A')
      result << 1
    elsif buff.index('C')
      result << 2
    elsif buff.index('G')
      result << 3
    else
      result << 4
    end
  end

  return result
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal [2,4,1], solution('CAGCCTA', [2,5,0], [4,5,6])
  end

  def test_1
    assert_equal [2,4,1,2,1,4], solution('CAGCCTAGCTA', [2,5,0,7,9,9], [4,5,6,8,10,9])
  end

  def test_2
    assert_equal [2,2,2,2,2], solution('CCCCCCCCCC', [2,5,0,1,4], [4,5,6,9,8])
  end

  def test_3
    assert_equal [4], solution('T', [0], [0])
  end
end
