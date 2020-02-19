require "euler/number/two/version"

module Euler
  module Number
    module Two
      class Error < StandardError; end
      
      # non-recursive solution to find the sum of the even-value
      # elements of the Fibonacci sequence that do not exceed a given limit
      def self.sum_even_fibs(limit)
        sum = 0
        
        # tuple initialized with the first two even elements of the sequence (including zero)
        tuple = [0, 2]
        
        # update the sum with the next even Fibonacci element
        # until it exceeds the passed limit, shortcircuit if limit 
        # is less than 2
        loop do
          sum += tuple.last 
          tuple = [ tuple.last,  4 * tuple.last + tuple.first ]
          break if (tuple.last > limit) 
        end if limit >= 2 
      
        sum 
      end
      
      # sum of the even-valued Fibonacci sequence whose values do not exceed four million
      def self.sum_even_fibs_smaller_than_4_mill
        sum_even_fibs(4e+06)
      end

    end
  end
end
