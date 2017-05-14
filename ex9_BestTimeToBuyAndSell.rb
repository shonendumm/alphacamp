=begin Exercise 9: Best Time to Buy and Sell Stock II
Say you have an array for which the ith element is the price of a given stock on day i. 
Design an algorithm to find the maximum profit. You may complete as many transactions as you like (ie, buy one and sell one share of the stock multiple times). However, you may not engage in multiple transactions at the same time (ie, you must sell the stock before you buy again).
# @param {Integer[]} prices
# @return {Integer}



Reference:
http://www.investopedia.com/articles/active-trading/052014/how-use-moving-average-buy-stocks.asp
http://www.businessinsider.com/the-best-time-to-buy-and-sell-stocks-2016-4?IR=T&r=US&IR=T


=end


@prices = [2, 2.5, 2.8, 3.1, 3.1, 3.1, 3.1, 3.1]


def moving_avg(days=30)
initial = @prices.length - days # index to start averaging from,i.e. 20, 30, 50, or 100 days back
    latest = @prices.length - 1 # index with latest price
    array = []
    for i in initial..latest do 
        array << @prices[i] # get the prices in an array
    end  
require 'bigdecimal'
require 'bigdecimal/util' # loads the to_d method
    sum = array.reduce(:+)
    average = sum.to_d / days # convert to BigDecimal class for arbitrary-precision decimal math
    @moving_avg = average.to_f.round(4) #convert back to floating num, and round it to 4 decimal places for result. Another way is to use:' "%.4f" % average # '(ignore single quotes).
end


def when_to_buy(current_price) 
# Buy during the early bullish phase. Buy when the price over 5-10 days show a pattern of average higher price than the moving average. For example, when moving_avg(50) is higher moving_avg(200). Or compare 


end

def when_to_sell
# Sell during the distribution phase, before the decline phase. This is when the shorter term moving averages cross each other, indicating a confusion of trend. 

end


def max_profit(prices)



end


