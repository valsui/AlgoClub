# Given an array of days, we want to return the average of the three days/wahtever data is available
# Ex: [1,2,3,4,5,6,7] will return 7 averages where Day 1 (Index 0 is the average of the current day and the next day - 2 days)
# and Day 2 is the average of Day 1,2,3 and the three days
#
def moving_average(values)
  values.each_with_index.map do |value, idx|
    if idx == 0
      (value + values[idx+1]).fdiv(2)
    elsif idx == values.size - 1
      (values[idx-1] + value).fdiv(2)
    else
      (values[idx-1]+ value + values[idx+1]).fdiv(3)
    end
  end
end

#test cases

