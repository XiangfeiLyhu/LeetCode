#class Solution(object):
#    def maxProfit(self, prices):
#        """
#        :type prices: List[int]
#        :rtype: int
#        """
#        min_p = min(prices)
#        max_p = max(prices)
#        buy = 0
#        index1 = 0
#        sell = 0
#        index2 = 0
#        pro = 0
#        for i in range(len(prices)):
#            if prices[i] == min_p:
#                buy = min_p
#                index1 = i 
#        if index1 = len(prices):

#        for j in range(index1:len(prices)):


#        sell = max(prices[index1:len(prices)])
#        pro = sell - buy
        #if index1 < index2:
        #    pro = max_p - min_p
        #else: 0
#        return pro


class Solution(object):
    def maxProfit(self, prices):
        """
        :type prices: List[int]
        :rtype: int
        """
        buy_price = prices[0]
        profit = 0

        for p in prices[1:]:
            if buy_price > p:
                buy_price = p
            profit = max(profit, p - buy_price)

        return profit