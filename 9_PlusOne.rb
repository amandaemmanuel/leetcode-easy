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



end

puts "#{plus_one([1,2,3])}"


























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