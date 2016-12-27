def substrings(string, dictionary)
  hash_list=Hash.new
  dictionary.each do |word|
		if string.downcase.include? word.downcase
		  	num= string.downcase.scan(word.downcase).length
		  	hash_list[word]=num
		end
   end
   puts hash_list
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)

substrings("Howdy partner, sit down! How's it going?", dictionary)


