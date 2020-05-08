#
# Problem: 
# Determine whether an integer is a palindrome. 
# An integer is a palindrome when it reads the same backward as forward.
#
# Full problem details: https://leetcode.com/problems/palindrome-number/
#

def reverseinteger(num)
    digits = num.to_s.split('').to_a
    
    if digits[0] == "-"
        puts "FALSE #{num} is not a palindrome"
    else
        #reverse the string and put it into an array, then print it as 1 number
        reversenum = digits.reverse.to_a.join.to_i
        if num == reversenum
            puts "TRUE #{reversenum} is a palindrome"
        else
            puts "FALSE"
        end
    end
 

end

reverseinteger(393)