class Solution(object):
    def maxProfit(self, prices):
        """
        :type prices: List[int]
        :rtype: int
        """
        max = 0
        start = prices[0]
        len1 = len(prices) #6
        for i in range(1, len1): # i from 1 to 5
            if start < prices[i]:
                max += prices[i] -start
            start = prices[i]
        return max