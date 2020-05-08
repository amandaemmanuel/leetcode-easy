#
# Problem: 
# Given an array of integers, return indices of the 2 numbers such that they add up to
# a specific target. You may assume that each input would have exactly 1 solution, and you
# may not use the same element twice
#
# Full problem details: https://leetcode.com/problems/two-sum/
#

class Calculations
    
    def initialize
        @array = [3,2,4,12]
        @match = 0
    end
    
    
    def compare_to_target(target)

        #what is the first number?
        @array.each_with_index {|value, i| 
            if i < (@array.size)
                
                #what is the 2nd number?
                j = i+1
                last = @array.size - 1

                for k in j..last do
                    sum = @array[i] + @array[k]
                    if sum == target #identifying a match & printing their values
                        puts "We have a match! At values #{@array[i]}, #{@array[k]} at [#{i}, #{k}]"
                        return @match = 1
                    end
                end
            end
        }

        #Recognizing there's no match
        if @match != 1
            puts "Oops! There's no match"
        end
    end
end

test = Calculations.new
test.compare_to_target 14
