/**
    Question Link: https://www.educative.io/courses/grokking-coding-interview-patterns-java/sum-of-three-values
    Time Complexity: O(n), Space Complexity: O(1)

    Example 1:
        Input: nums = [3, 7, 1, 2, 8, 4, 5], target=21
        Output: false
    
    Example 2:
        Input: nums = [-1, 2, 1, -4, 5, -3], target=-8
        Output: true

 */

class SumOfThreeValues {
    func solution(_ nums: [Int], _ target: Int) -> Bool {
        return false
    }

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
}
