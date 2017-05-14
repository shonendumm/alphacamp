=begin Exercise 9: Best Time to Buy and Sell Stock II
Say you have an array for which the ith element is the price of a given stock on day i. 
Design an algorithm to find the maximum profit. You may complete as many transactions as you like (ie, buy one and sell one share of the stock multiple times). However, you may not engage in multiple transactions at the same time (ie, you must sell the stock before you buy again).
# @param {Integer[]} prices
# @return {Integer}

=end


@prices = [2, 2.5, 2.8, 3.1, 3.1, 3.1, 3.1, 3.1]

@prices.last #latest price value

def moving_avg_today
    sum = @prices.reduce(:+)
    average = sum / @prices.length
    average
end

def moving_avg(days)
    ma_index = @prices.length - days
    latest_index = @prices.length - 1
    array = []
    for i in ma_index..latest_index do 
        array << @prices[i]
    end  
   array.reduce(:+).to_f / array.size #still has floating point error
end


def when_to_buy(current) 
# Buy during the early bullish phase. Calculate what's the 30-day moving average of the stock's price as comparison. Buy when the price over 5-10 days show a pattern of average higher price than the moving average. http://www.businessinsider.com/the-best-time-to-buy-and-sell-stocks-2016-4?IR=T&r=US&IR=T

    if current > @moving_avg



end

def when_to_sell
# Sell during the distribution phase, before the decline phase. This is when the shorter term moving averages cross each other, indicating a confusion of trend. 

end


def max_profit(prices)



end


