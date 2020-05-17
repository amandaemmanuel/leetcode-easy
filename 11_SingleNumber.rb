#
# Given a non-empty array of integers, every element appears twice except for one. Find that single one.
# Note:
# Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?
#
# Full problem details: https://leetcode.com/problems/single-number/


def single_number(nums)

    #storing the frequency of each value in the array in a hashtable
    #new hashtable with default values = 0
    frequency = Hash.new(0)

    #iterate through each integer in the array, add it to the hash
    # hash key = integer, hash value = frequency of the integer
    nums.each{|key|
        frequency[key] += 1 #increment hash value based on frequency of the integer
    }

    #recognize & return the key where the value (ie: frequency) == 1
    return frequency.key(1)

    #puts "#{frequency}"
end


puts "#{single_number([3,-1, -1,0,4,0,4])}"
