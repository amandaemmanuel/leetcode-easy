#
# Problem: 
# Given an array nums and a value val, remove all instances of that value in-place and return the new length.
# Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
# The order of elements can be changed. It doesn't matter what you leave beyond the new length.
#
# Full problem details: https://leetcode.com/problems/remove-element/
#


def remove_element(nums, val)

    # puts "array before: #{nums}"
    # #recognize if there's a match between the val & a value in the array
    # nums.each_with_index {|value, index|
    #     #recognize a match (between target value & array's value)
    #     if value == val
    #         puts "match"
    #         #delete matching array element
    #         nums.delete_at(index)
    #     end
    # }
    # puts "array after: #{nums}"
    # #return size of the revised array
    # puts "revised array is of size #{nums.size}"

    array_index = 0

    puts "array before: #{nums}"
    while array_index < nums.size 
        if nums[array_index] == val
            nums.delete_at(array_index) #identify a match, and delete the array element
        else
            array_index += 1 
        end
    end
    puts "array after: #{nums}"
    puts "revised array is of size #{nums.size}"

    # return nums.size






end

array = [0,1,2,2,3,0,4,2]
val = 2
remove_element(array, val)