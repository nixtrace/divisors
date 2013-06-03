require 'minitest/autorun'
require 'minitest/pride'

require 'divisors'

describe 'Divisors' do

  before do
    @divisors = Divisors.new(10)
  end

  it 'needs an integer parameter' do
    @divisors.must_be_instance_of Divisors
  end

  describe 'when initialized with 10' do

    describe 'when finding the largest divisors number' do
      it 'returns a number:divisors couple' do
        @divisors.largest.must_include '6:4'
        @divisors.largest.must_include '8:4'
        @divisors.largest.must_include '10:4'
      end
    end

  end

  describe 'when counting number of divisors for an integer' do
    it 'returns 10 if number is 48' do
      @divisors.count(48).must_equal 10
    end
    it 'returns 2 if number is 3' do
      @divisors.count(3).must_equal 2
    end
    it 'returns 1 if number is 1' do
      @divisors.count(1).must_equal 1
    end
  end

  describe 'when finding all divisors counts for the interval 1 - n' do
    it 'returns an array of all divisors count' do
      @divisors.counts(10).must_equal [1, 2, 2, 3, 2, 4, 2, 4, 3, 4]
      @divisors.counts(1).must_equal [1]
      @divisors.counts(3).must_equal [1, 2, 2]
    end
  end

end