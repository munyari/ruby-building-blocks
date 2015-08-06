#
# Credit to templatetypedef on StackOverflow (a.k.a. Keith Schwarz) for the O(n)
# time O(1) space solution
# https://stackoverflow.com/questions/7086464/maximum-single-sell-profit
# http://keithschwarz.com/interesting/code/?dir=single-sell-profit
#

def stock_picker(stocks)
    # Keep track of the best possible profit and lowest price seen so far
    profit = 0
    cheapest_index = 0
    
    # Keep track of indices of best combo
    best_buy = 0
    best_sell = 0
    
    stocks.each_with_index do |stock, i|
        # establish index of cheapest stock
       if stock < stocks[cheapest_index]
           cheapest_index = i
       end
       
       current = stock - stocks[cheapest_index]
       if stock - stocks[cheapest_index] > profit
           profit = stock - stocks[cheapest_index]
           best_buy = cheapest_index
           best_sell = i
       end
    end
    [best_buy, best_sell]
end



stock_picker([17,3,6,9,15,8,6,1,10])
