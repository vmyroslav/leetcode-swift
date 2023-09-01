/**
    Question Link: https://leetcode.com/problems/two-sum/
    Time Complexity: O(n), Space Complexity: O(n)

    Example 1:
        Input: nums = [2,7,11,15], target = 9
        Output: [0,1]
        Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
    
    Example 2:
        Input: nums = [3,2,4], target = 6
        Output: [1,2]
 */

class TwoSum {
    func solution(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int:Int]()

        for (i, num) in nums.enumerated() {
            if let index = dict[target - num] {
                return [index, i]
            }

            dict[num] = i
        }

        return [Int]()
    }
}
