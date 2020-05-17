#
# Problem: 
# Given a sorted array nums, remove the duplicates in-place such that each element appear only once and return the new length.
# Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
# 
# Full problem details: https://leetcode.com/problems/remove-duplicates-from-sorted-array/
#


def remove_duplicates(nums)
    
    if nums.size > 0 #make sure the array size > 0
        
        if nums[0] == "" # exit if the 1st element is empty
            return
        else
            compare_to = nums[0]
            index = 1

            # iterate through the values of the array
            while index < nums.size
                value = nums[index]
                if compare_to == value
                    nums.delete_at(index) # delete value (maintain compare_to value)
                    # do NOT increment index pointer 
                    # BC when delete value, the pointer must continue pointing to that same location since the value will update (with deletion)
                    puts "MATCH #{compare_to} compared to value: #{value} at index[#{index}]"
                else
                    puts "NO match #{compare_to} compared to value: #{value} at index[#{index}]"
                    compare_to = value # re-configuring the value to compare against
                    index += 1
                end
            end
                puts "#{nums}"
            return nums.length
        end
    else
        return #exit if the array doesn't have any values
    end

end

puts "#{remove_duplicates([1,2,3])}"
































# def remove_duplicates(nums)
#     if nums.size <= 1 # if the array is empty, early exit
#         return nums
#     end
    
#     curr_index = 1
    
#     while curr_index < nums.size 
#         #indicate which 2 values we will be comparing against one another
#         previous = nums[curr_index - 1]
#         curr = nums[curr_index]
#         if previous == curr
#             nums.delete_at(curr_index) #identify a match, and delete the array element
#         else
#             curr_index += 1 
#         end
#     end

#     return nums.size
# end

# remove_duplicates([1,1,2,2,3,4])

   