def max_profit_days (max_profit_days)
  max_days = []
  max_profit_days.each_slice(2) { |arrays| max_days.push(arrays) }
  return max_days.last
end

def stock_picker (days_array)
  max_profit = 0
  max_profit_days = []
  days_array.each_with_index do |buy, buy_index|
      days_array.each_with_index do |sell, sell_index|
          next if sell_index <= buy_index
          profit = sell - buy
          if profit > max_profit
              max_profit = profit
              max_profit_days.push(buy_index, sell_index)
          end
      end
  end
  p max_profit_days(max_profit_days)
end

stock_prices = [17,3,6,9,15,8,6,1,10]
stock_picker(stock_prices)
