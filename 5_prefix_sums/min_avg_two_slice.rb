require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test score 60%
# - Correctness 100%
# - Performance 20%

## Correctness tests

## Performance tests

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
    break if a.size < (num_p+2)

    tmp_sum = a[num_p..a.size-1].reduce(:+)
    tmp_count = (a.size-1 - num_p + 1).to_f

    tmp_avg = tmp_sum / tmp_count
    if tmp_avg < min_avg
      min_avg = tmp_avg
      result = num_p
    end

    (num_p+2..a.size-1).to_a.reverse.each do |num_q|
      tmp_sum -= a[num_q]
      tmp_count -= 1.0

      tmp_avg = tmp_sum / tmp_count
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
