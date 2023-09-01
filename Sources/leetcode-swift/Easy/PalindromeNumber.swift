/**
    Question Link: https://leetcode.com/problems/palindrome-number/
    Time Complexity: O(n), Space Complexity: O(n)

    Example 1:
        Input: x = 121
        Output: true
        Explanation: 121 reads as 121 from left to right and from right to left.
 
    Example 2:
        Input: x = -121
        Output: false
        Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
 
    Example 3:
        Input: x = 10
        Output: false
        Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
 */

class PalindromeNumber {
    /**
        Time Complexity: O(n), Space Complexity: O(n)
     */
    func solutionIndexing(_ x: Int) -> Bool {
        guard (x >= 0) else {
            return false
        }

        let str = String(x)
        
        for i in 0..<str.count/2 {
            let leftIndex = str.index(str.startIndex, offsetBy: i)
            let rightIndex = str.index(str.endIndex, offsetBy: -i-1)
            
            if (str[leftIndex] != str[rightIndex]) {
                return false
            }
        }
        
        return true
    }
    
    /**
        Time Complexity: O(n), Space Complexity: O(n)
     */
    func solutionReverseString(_ x: Int) -> Bool {
        let str = String(x)
        
        return str == String(str.reversed())
    }
    
    func solutionDividing(_ x: Int) -> Bool {
        guard (x >= 0) else {
            return false
        }
        
        var num = x
        var reverse = 0
        
        while (num > 0) {
            let reminder = num % 10
            reverse = reverse * 10 + reminder
            num = num / 10
        }
        
        return x == reverse
    }
}
