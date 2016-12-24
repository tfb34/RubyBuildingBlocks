def stock_picker(input)
	
	pair=[0,0]

    for i in 1..input.length-2
    	buy_price_day=input[0..i].each_with_index.min
    	
    	if buy_price_day[0]<input[pair[0]]

            sell_price_day=input[i+1..input.length-1].each_with_index.max
            sell_price_day[1]+=i+1
            past_profit=input[pair[1]]-input[pair[0]]
            current_profit=sell_price_day[0]-buy_price_day[0]
            
            if(current_profit>past_profit)
            	pair[0]=buy_price_day[1]
            	pair[1]=sell_price_day[1]
            end
        end
    end
   print pair
end

stock_picker([17,3,6,9,15,8,6,1,10])
