/**
    Question Link: https://leetcode.com/problems/contains-duplicate/
    Time Complexity: O(n), Space Complexity: O(n)

    Example 1:
        Input: nums = [1,2,3,1]
        Output: true
    
    Example 2:
        Input: nums = [1,2,3,4]
        Output: false
 
    Example 3:
        Input: nums = [1,1,1,3,3,4,3,2,4,2]
        Output: true

 */

class ContainsDuplicate {
    func solution(_ nums: [Int]) -> Bool {
        guard (nums.count > 1) else {
            return false
        }
        
        var map: [Int: Bool] = [:]
        
        for num in nums {
            if map.keys.contains(num) {
                return true
            }
            
            map[num] = true
        }
        
        return false
    }
}
