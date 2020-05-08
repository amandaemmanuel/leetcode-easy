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



# @array[i+1..@array.size].each_with_index {|num2, j|
                #     sum = value + num2
                #     if sum == target #identifying a match & printing their values
                #         puts "We have a match! At values #{value}, #{num2} at [#{i}, #{j+1}]"
                #         return @match = 1
                #     end
                # }