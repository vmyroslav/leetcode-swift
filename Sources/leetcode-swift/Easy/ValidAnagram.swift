/**
    Question Link: https://leetcode.com/problems/valid-anagram/

    Example 1:
        Input: s = "A man, a plan, a canal: Panama"
        Output: true
        Explanation: "amanaplanacanalpanama" is a palindrome.
    
    Example 2:
        Input: s = "race a car"
        Output: false
        Explanation: "raceacar" is not a palindrome.
 
    Example 3:
        Input: s = " "
        Output: true
        Explanation: s is an empty string "" after removing non-alphanumeric characters.
        Since an empty string reads the same forward and backward, it is a palindrome.
 */

class ValidAnagram {
    // Time Complexity: O(n)), Space Complexity: O(n)
    func solution(_ s: String) -> Bool {
        let arr = Array(s.lowercased().filter({ $0.isLetter || $0.isNumber }))
        
        guard !arr.isEmpty else {
            return true
        }
        
        var left = 0
        var right = arr.count - 1
        
        while left <= right {
            if arr[left] != arr[right] { return false }
            left += 1
            right -= 1
        }
        
        return true
    }
}
