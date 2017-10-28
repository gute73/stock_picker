def stock_picker (stocks)
	buy_stock = 0
	sell_stock = 0
	profit = 0
	stocks.each_with_index do |value, index1|
		index1.upto(stocks.length - 1) do |index2|
			if stocks[index2] - value > profit
				profit = stocks[index2] - value
				buy_stock = index1
				sell_stock = index2
			end
		end
	end
	print "You should buy the stock on day #{buy_stock} at $#{stocks[buy_stock]} and sell "
	puts "the stock on day #{sell_stock} at $#{stocks[sell_stock]} for a profit of $#{profit}."
end

stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([17,3,6,9,15,8,6,7,23])
