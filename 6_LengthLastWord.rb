#
# Problem: 
# Given a string s consists of upper/lower-case alphabets and empty space characters ' ', 
# return the length of last word (last word means the last appearing word if we loop from left to right) in the string.
# If the last word does not exist, return 0.
# Note: A word is defined as a maximal substring consisting of non-space characters only.
#
# Full problem details: https://leetcode.com/problems/length-of-last-word/
#

def length_of_last_word(string1)
    # Breakdown the sentence into words
    words = string1.split(" ")

    # Recognize the last word in the sentence (making sure there is a sentence, and it has values)
    # Retrieve the number of characters in the last word
    if words.length != 0 && words != 0
        last = words[(words.size)-1].length
        return last
    else
        return 0
    end

end

length_of_last_word("Hello, it's Amanda")



