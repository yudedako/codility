require 'pry'
require 'byebug'
require 'pry-byebug'
require 'minitest/autorun'

# Test Score 66%
# Correctness 80%
# Performance 50%

# Correctness tests

# small random test n=201 ✘RUNTIME ERROR
# tested program terminated unexpectedly

# Perfomance tests

# medium2
# medium random test n=100,003 ✘RUNTIME ERROR
# tested program terminated unexpectedly

# big1
# big random test n=999,999, multiple repetitions ✘RUNTIME ERROR
# sested program terminated unexpectedly

def solution(a)
  return a.group_by{|n| n}.select{|k,v| v.size == 1}.keys.first
end

class Tests < MiniTest::Unit::TestCase
  def test_basic
    assert_equal 7, solution([9,3,9,3,9,7,9])
  end

  def test_1
    assert_equal 2, solution([1,2,1])
  end
end
