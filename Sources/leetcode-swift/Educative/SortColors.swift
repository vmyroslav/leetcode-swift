/**
    Question Link: https://www.educative.io/courses/grokking-coding-interview-patterns-java/sort-colors



    Example 1:
        Input: nums = [3, 7, 1, 2, 8, 4, 5], target=21
        Output: false
    
    Example 2:
        Input: nums = [-1, 2, 1, -4, 5, -3], target=-8
        Output: true

 */

class SortColors {
    // Time Complexity: O(n^3), Space Complexity: O(1)
    func naiveSolution(_ nums: [Int], _ target: Int) -> Bool {
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                for k in j+1..<nums.count {
                    if nums[i] + nums[j] + nums[k] == target {
                        return true
                    }
                }
            }
        }
        
        return false
    }
    
    // Time Complexity: O(nlog(n)+n^2), Space Complexity: O(n)
    func solution(_ nums: [Int], _ target: Int) -> Bool {
        var arr = nums
        arr.sort()
        
        var low, high, sum : Int
        
        for i in 0..<arr.count - 2 {
            low = i + 1
            high = arr.count - 1
            
            
            while low < high {
                sum = arr[i] + arr[low] + arr[high]
                if sum == target { return true }
                
                if (sum > target) {
                    high -= 1
                } else {
                    low += 1
                }
            }
            
        }
        
        return false
        
    }
}
