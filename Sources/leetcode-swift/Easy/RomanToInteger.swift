/**
    Question Link: https://leetcode.com/problems/roman-to-integer/
    Time Complexity: O(n), Space Complexity: O(1)

    Example 1:
        Input: s = "III"
        Output: 3
        Explanation: III = 3.
    
    Example 2:
        Input: s = "LVIII"
        Output: 58
        Explanation: L = 50, V= 5, III = 3.
 
    Example 3:
        Input: s = "MCMXCIV"
        Output: 1994
        Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.
 */

class RomanToInteger {
    func solution(_ s: String) -> Int {
        var result = 0
        var previous: Int = 0
        
        for ch in s {
            let current = convert(ch)
            
            if (previous < current) {
                result -= previous
            } else {
                result += previous
            }
            
            previous = current
        }
        
        result += previous

        return result
    }
    
    func convert(_ char: Character) -> Int {
        switch char {
        case "I":
            return 1
        case "V":
            return 5
        case "X":
            return 10
        case "L":
            return 50
        case "C":
            return 100
        case "D":
            return 500
        case "M":
            return 1000
        default:
            return 0
        }
    }
}
