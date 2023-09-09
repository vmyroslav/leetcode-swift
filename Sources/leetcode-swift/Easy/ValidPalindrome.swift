/**
    Question Link: https://leetcode.com/problems/valid-palindrome/

    Example 1:
        Input: s = "anagram", t = "nagaram"
        Output: true
    
    Example 2:
        Input: s = "rat", t = "car"
        Output: false

 */

class ValidPalindrome {
    // Time Complexity: O(n), Space Complexity: O(k)
    func solutionCompareDicts(_ s: String, _ t: String) -> Bool {
        guard (s.count == t.count) else {
            return false
        }
        
        var mapS: [Character:Int] = [:]
        var mapT: [Character:Int] = [:]
        
        for i in 0..<s.count {
            let indexS = s.index(s.startIndex, offsetBy: i)
            let indexT = t.index(t.startIndex, offsetBy: i)
            
            mapS[s[indexS], default: 0] += 1
            mapT[t[indexT], default: 0] += 1
        }
        
        return mapS == mapT
    }
    
    // Time Complexity: O(n), Space Complexity: O(k)
    func solution(_ s: String, _ t: String) -> Bool {
        guard (s.count == t.count) else {
            return false
        }
        
        var map : [Character:Int] = [:]
        
        for char in s {
            map[char, default: 0] += 1
        }
        
        for char in t {
            if let count = map[char], count > 0 {
                map[char] = count - 1
            } else {
                return false
            }
            
        }
        
        return true
    }
    
    // Time Complexity: O(n*log(n)), Space Complexity: O(n)
    func solutionSorted(_ s: String, _ t: String) -> Bool {
        return s.sorted() == t.sorted()
    }
}
