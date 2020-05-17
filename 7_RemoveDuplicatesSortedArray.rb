#
# Problem: 
# Given a sorted array nums, remove the duplicates in-place such that each element appear only once and return the new length.
# Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
# Full problem details:
#

def remove_duplicates(nums)
    if nums.size <= 1 # if the array is empty, early exit
        return nums
    end
    
    curr_index = 1
    
    while curr_index < nums.size 
        #indicate which 2 values we will be comparing against one another
        previous = nums[curr_index - 1]
        curr = nums[curr_index]
        if previous == curr
            nums.delete_at(curr_index) #identify a match, and delete the array element
        else
            curr_index += 1 
        end
    end

    return nums.size
end

remove_duplicates([1,1,2,2,3,4])

   