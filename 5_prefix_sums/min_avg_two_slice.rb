require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 50%
# - Correctness 100%
# - Performance 0%

## Correctness tests

## Performance tests

# medium_random
# random, N = ~700 ✘TIMEOUT ERROR
# running time: 3.51 sec., time limit: 0.34 sec.

# large_ones
# numbers from -1 to 1, N = ~100,000 ✘TIMEOUT ERROR
# running time: >6.00 sec., time limit: 0.65 sec.

# large_random
# random, N = ~100,000 ✘TIMEOUT ERROR
# running time: >6.00 sec., time limit: 0.67 sec.

# extreme_values
# all maximal values, N = ~100,000 ✘TIMEOUT ERROR
# running time: >6.00 sec., time limit: 0.65 sec.

# large_sequence
# many seqeneces, N = ~100,000 ✘TIMEOUT ERROR
# running time: >6.00 sec., time limit: 0.64 sec.

def solution(a)
  result = 0
  min_avg = (a[0] + a[1]) / 2.0

  (0..a.size-1).each do |num_p|
    break if a.size < (num_p+1)

    (num_p+1..a.size-1).each do |num_q|
      tmp_avg = a[num_p..num_q].reduce(:+) / (num_q-num_p+1).to_f
      if tmp_avg < min_avg
        min_avg = tmp_avg
        result = num_p
      end
    end
  end

  return result
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal 1, solution([4,2,2,5,1,5,8])
  end
end
