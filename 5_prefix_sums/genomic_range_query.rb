require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 0%
# - Correctness 100%
# - Performance 0%

## Correctness tests

## Performance tests

# almost_all_same_letters
# GGGGGG..??..GGGGGG..??..GGGGGG ✘TIMEOUT ERROR
# running time: >7.00 sec., time limit: 1.12 sec.

# large_random 
# large random string, length ✘TIMEOUT ERROR
# running time: >7.00 sec., time limit: 1.02 sec.

# extreme_large
# all max ranges ✘TIMEOUT ERROR
# running time: >7.00 sec., time limit: 1.17 sec.

def solution(s, p, q)
  result = []

  dna_hash = { 'A' => 1, 'C' => 2, 'G' => 3, 'T' => 4 }
  dna_array = s.chars.map{|c| dna_hash[c]}

  (0..p.size-1).each do |idx|
    result << dna_array[p[idx]..q[idx]].min
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
