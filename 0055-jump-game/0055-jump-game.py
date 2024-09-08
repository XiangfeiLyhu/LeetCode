class Solution(object):
    def canJump(self, nums):
        """
        :type nums: List[int]
        :rtype: bool
        """
        last_index = len(nums) - 1
        for i in range(len(nums)-2, -1,-1):
            if i + nums[i] >= last_index:
                last_index = i
        return True if last_index == 0 else False
       
        