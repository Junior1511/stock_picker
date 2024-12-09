def stock_picker (array)
  lowest = []
  profits = []
  array.each_with_index do |number,day|
    if day == 0 
      lowest << [number,day]
    elsif number < lowest.last.first
      lowest << [number,day]
    elsif number > lowest.last.first
      profits << [(number - lowest.last.first), lowest.last.last, day]
    end
  end
  p [profits.max[1],profits.max[2]]
end
 stock_picker([17,3,6,9,15,8,6,1,10])