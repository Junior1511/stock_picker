def stock_picker (array)
  buy = []
  sell = []
  profit = 0
  array.each_with_index do |num, index|
    if index == 0
      buy = [num,index]
      # day 1 no profit cause you cant sell
    elsif num < buy[0]
      buy = [num,index]
    elsif num > buy[0]
      sell << [num,index]
      profit = sell[0]-buy[0]
    end
  end
  return [buy[1],sell[1]]
end
p stock_picker([17,3,6,9,15,8,6,1,10])