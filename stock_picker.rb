def stock_picker(array)
  profit = []
  buy = []
  sell = []
  array.each_with_index do |price, day|
    if day == 0
      buy = [price, day]
    elsif day > 0 && price < buy[0]
      buy = [price, day]
    elsif day > buy[1] && price > buy[0]
      sell = [price, day]
      profit << [buy, sell, [(sell[0] - buy[0])]]
    end
  end
  result = profit.max 
  p result
  puts "The best day to buy is day ##{result[0][1]} at a price of #{result[0][0]}"
  puts "The best day to sell is day ##{result[1][1]} at a price of #{result[1][0]}"
  puts "The profit of those days is #{result[2][0]}"
end

stock_picker([17,3,6,9,15,8,6,1,10])
