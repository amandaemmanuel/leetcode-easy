#
# Problem: 
# Given a non-empty array of digits representing a non-negative integer, plus one to the integer.
# The digits are stored such that the most significant digit is at the head of the list, and each 
# element in the array contain a single digit.
# You may assume the integer does not contain any leading zero, except the number 0 itself.
#
# Full problem details: https://leetcode.com/problems/plus-one/
#

def plus_one(digits)

    #recognize the last digit of the array
    if digits.last != 9
        digits[-1] = digits[-1] + 1 # increment the last number
        return digits
    else
        # check if the number is a 9, carry the 1 accordingly
        puts "before iterating: #{digits}"
        i = digits.size-1

        #iterate through the array in reverse
        while i >= 0
            puts "value: #{digits[i]} (at index[#{i}])"
            # increment last digit (and relevant digits) in reverse
            puts"#{digits[i] = is_it_nine(digits[i])}"
                if digits[i] != 0 # recognize when to stop updating digits
                    return digits
                end
                if digits[0] == 0 # if the 1st value = 9, add a new digit
                    digits.insert(0,1)
                end 
            i -= 1
        end
        return digits
        # for i in 0..digits.size-1 do
        #     puts "value: #{digits[i]} (at index [#{i}])"
        #     digits[-i] = is_it_nine(digits[-i]) 
        #     puts "after function: value: #{digits[i]} (at index [#{i}])" 
        #     # if the first value is a 9, add a new element to the array 
        #     # if digits[0] == 0
        #     #     digits.insert(0,1)
        #     # end  
      
        # end

        # puts "before iterating: #{digits}"
        # digits.reverse.each_with_index{|val, index|
        #     puts "#{digits.reverse}"
        #     puts "value: #{val} at index[#{index}]"
        #     puts"#{digits[index] = is_it_nine(val)}"

        #     if digits[index] != 0 # recognize 
        #         return digits
        #     end
        # }
        # return digits

    end

    

end

def is_it_nine(value)

    if value != 9 
        value += 1 #increase the value of the digit by 1
        return value
    else
        return value = 0 #the 9 becomes 0, check previous digit
    end

end


puts "#{plus_one([9,6,9])}"


























# def plus_one(digits)

#     #recognize the last digit in the array
#     #increment the last digit & update the array accordingly
#     #factor in if the last element is 9
#     if digits.last == 9
#         digits[-1] = 0
#         digits[-2] = digits[-2] + 1
#     else
#         digits[-1] = digits.last+1
#     end
#     #present the resulting array
#     #return digits
#     puts "#{digits}"
    

# end

# digits = [9,9,9]
# plus_one(digits)