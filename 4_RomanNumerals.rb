#
# Problem: 
# Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.
# Given an integer, convert to a roman numeral. Input is guaranteed to be within the range from 1 to 3999.
# ***I mis-read the problem.. :/
# Full problem details: https://leetcode.com/problems/roman-to-integer/
#
class Convert

    attr_accessor :digits, :integer
  
    def initialize
        @digits = @integer.to_s.split('').to_a
    end

def calc_hundreds(hundreds)

    if hundreds > 0
        if (hundreds % 900) == 0
            return "CM"
        elsif (hundreds % 500) == 0 
            return "D" 
        elsif (hundreds % 400) == 0
            return "CD"
        else
            return "C" * (hundreds/100)
        end
    end
end

    def calc_tens(tens) 
        if tens > 0
            if (tens % 90) == 0
                return "XC"
            elsif (tens % 50) == 0
                return "L"
            elsif (tens %40) == 0
                return "XL"
            else 
                return "X" * (tens/10)
            end
        end
    end

    def calc_ones(ones) 
        if ones > 0
            if (ones % 9) == 0
                return "IX"
            elsif (ones % 5) == 0
                return "V"
            elsif (ones % 4) == 0
                return "IV"
            else 
                return "I" * (ones)
            end 
        end
    end

   


    #converting int to roman numerals
    def Int_to_Roman(integer)
        
        @digits = integer.to_s.split('').to_a
        @final = []
        #puts "#{digits}"

        #determine the number of digits before making the conversion
        case @digits.size
            when 4 #thousands
                @final[0] = "M" * @digits[0].to_i
                @final[1] = calc_hundreds(@digits[1].concat("00").to_i) 
                @final[2] = calc_tens(@digits[2].concat("0").to_i)
                @final[3] = calc_ones(@digits[3].to_i)
                puts "#{@final.join}"

            when 3 #hundreds
                @final[0] = calc_hundreds(@digits[0].concat("00").to_i) 
                @final[1] = calc_tens(@digits[1].concat("0").to_i)
                @final[2] = calc_ones(@digits[2].to_i)
                puts "#{@final.join}"
               
            when 2 #tenths
                @final[0] = calc_tens(@digits[0].concat("0").to_i)
                @final[1] = calc_ones(@digits[1].to_i)
                puts "#{@final.join}"

            else
                @final[0] = calc_ones(@digits[0].to_i)
                puts "#{@final.join}"
        end

    end


end

a = Convert.new
a.Int_to_Roman(549)
