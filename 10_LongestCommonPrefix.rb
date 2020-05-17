# Write a function to find the longest common prefix string amongst an array of strings.
# If there is no common prefix, return an empty string "".
#
# Full problem details: https://leetcode.com/problems/longest-common-prefix/


def longest_common_prefix(strs)

    #if the string has 0 words, early exit
    if strs.size == 0
        return ""
    elsif
        base = (strs[0])

        #compare 2 words at a time, then compare the result of that comparison against the next word in the array
        for j in 1..(strs.size-1) do
            base = compare_prefix(base, strs[j])
        end

        return base
    end

end

def compare_prefix(word1, word2)
    #break down the 2 words into letters
    word1 = word1.split("")
    word2 = word2.split("")

    #optimize the number of comparisons, find the length of the shortest word
    length = if word1.size < word2.size
        word1.size
    else
        word2.size
    end

    result = ""


    #iterate through the 2 words (letter by letter) to recognize if they match (only do for the length of the shorter word)
    for i in 0..(length-1) do
        if word1[i] != ""
            #if there's a match, add the letter to the resulting string
            if word1[i] == word2[i]
                result += word1[i]
            #if there's no match, early exit & return the resulting string so far
            else
                return result
            end 
        end

    end

    #return the resulting string after comparing the 2 words to each other
    return result
end

puts "#{longest_common_prefix(["flower", "flow", "flight"])}"