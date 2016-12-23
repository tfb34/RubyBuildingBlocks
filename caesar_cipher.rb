def caesar_cipher(string, shiftFactor)
       string.each_char.with_index do |char, index| 
            if isLetter(char)
            	string[index]= shift(char, shiftFactor)
            end
       end
       puts string
end

def isLetter(input)
	ascii = input.sum

	if (ascii >='A'.sum && ascii<='Z'.sum) || (ascii >='a'.sum && ascii<='z'.sum)
	    return true
	else
		return false
    end
end


def shift(char, shiftFactor)
	 if char==char.upcase     # $ascii values: 0....25
	 	$ascii= char.sum-'A'.sum 
	 else
	 	$ascii=char.sum-'a'.sum
	 end
	 
	 if $ascii+shiftFactor <=25
         char =char.sum+shiftFactor
         return char.chr
	 else
        leftover=$ascii+shiftFactor-26
        char=char.sum-$ascii+leftover
        return char.chr
	 end 
end


caesar_cipher("What a string!", 5)