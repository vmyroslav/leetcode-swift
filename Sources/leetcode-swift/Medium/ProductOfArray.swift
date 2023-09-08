/**
    #Arrays
 
    Question Link: https://leetcode.com/problems/product-of-array-except-self/

    Example 1:
        Input: nums = [1,2,3,4] [1,1,2,6] [ ,8,6]
        Output: [24,12,8,6]
    
    Example 2:
        Input: nums = [-1,1,0,-3,3]
        Output: [0,0,9,0,0]
 */

import Foundation

class ProductOfArray {
    func solution(_ nums: [Int]) -> [Int] {
        var result = Array(repeating: 1, count: nums.count)
        
        for i in 1..<nums.count {
            result[i] = result[i-1] * nums[i-1]
        }
        
        var right = 1
        for i in stride(from: nums.count - 1, through: 0, by: -1) {
            result[i] *= right
            right *= nums[i]
        }
        
        return result
    }
}
