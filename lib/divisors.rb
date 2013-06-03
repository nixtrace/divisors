require 'prime'

class Divisors
  
  def initialize(max)
    @max = max
  end

  # Count number
  # of divisors using
  # the Tau formula.
  # (3)
  # => 2
  def count(n)
    sum = 1
    n.prime_division.each do |x|
      sum *= (x[1] + 1)
    end
    sum
  end

  # Returns an array
  # with the number of divisors in
  # the interval between 1 and n.
  # (10)
  # => [1, 2, 2, 3, 2, 4, 2, 4, 3, 4]
  def counts(n)
    divisors = Array.new
    (1..n).each do |n|
      single_divisors = count n
      divisors.push(single_divisors)
    end
    divisors
  end

  # Finds the number that has the
  # largest number of divisors.
  # Returns a string containing a couple
  # number:divisors_number
  def largest
    divisors = counts(@max)
    result = ''
    divisors.each_with_index do |total, index|
      if total == divisors.max
        result << "#{index+1}:#{total} "
      end
    end
    result.strip
  end

end