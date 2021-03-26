require 'pry'

def stock_picker(prices_array)
  daily_profit_array = []
  maximum_profit_array = []
  
  prices_array.each_with_index do |stock_price, index| 
    for price in prices_array do
      if index < prices_array.index(price)

        sell_date_index = prices_array.index(price)
        profit = price - stock_price

       daily_profit_array.push([profit, sell_date_index]) 
      end
    end

  maximum_profit_with_day = daily_profit_array.max.to_a
  maximum_profit = maximum_profit_with_day[0]
  date_index = maximum_profit_with_day[1]

  maximum_profit_array.push(maximum_profit_with_day)
  
  daily_profit_array.clear
end

optimal = maximum_profit_array.max.to_a

p "By purchasing stock on Day #{maximum_profit_array.index(optimal)} and selling on Day #{optimal[1]} you will earn a maximum profit of #{optimal[0]}"

end


# This array represents stock closing prices over a 9 day period for one company.

prices_array = [17,3,6,9,15,8,6,1,10]

stock_picker(prices_array)
