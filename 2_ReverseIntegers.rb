#
# Problem: 
# Given a 32-bit signed integer, reverse digits of an integer.
# Note:Assume we are dealing with an environment which could only 
#store integers within the 32-bit signed integer range: [−231,  231 − 1]. 
#For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.
#
# Full problem details: https://leetcode.com/problems/reverse-integer/
#


integer = 8999
@max = 2147483647
@min = -2147483647

def reverseinteger(num)
    digits = num.to_s.split('').to_a
    compare = num.to_s.reverse.to_i

    if compare > @min && compare < @max
    
        if digits[0] == "-"
            finalnum = (num.abs.to_s.split('').to_a.reverse.join.to_i)* -1
            puts "this is a negative number #{finalnum}"
        else
            #reverse the string and put it into an array, then print it as 1 number
            finalnum = digits.reverse.to_a.join.to_i
            puts "this is a positive number #{finalnum}"
        end
    else
        puts "0"

    end  

end

reverseinteger(integer)