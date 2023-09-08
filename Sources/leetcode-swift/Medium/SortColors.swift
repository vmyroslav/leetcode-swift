/**
   #Arrays
    
    Question Link: https://leetcode.com/problems/sort-colors/

    Example 1:
        Input: nums = [2, 2, 1, 1, 0]
        Output:[0, 1, 1, 2, 2]
    
    Example 2:
        Input: nums = [2, 2, 0, 1, 2, 2, 0, 2]
        Output:[0, 0, 1, 2, 2, 2, 2, 2]

    Example 3:
        Input: nums = [2, 0, 1]
        Output:[0, 1, 2]
 */

class SortColors {
    // Time Complexity: O(log(n)), Space Complexity: O(n)
    func naiveSolution(_ colors: inout [Int]) {
        colors.sort()
    }
    
    // Time Complexity: O(n), Space Complexity: O(n)
    func solution(_ colors: inout [Int]) {
        var map: [Int:Int] = [:]
        
        for color in colors {
            map[color, default: 0] += 1
        }
        
        let red = Array(repeating: Color.red.rawValue, count: map[Color.red.rawValue, default: 0])
        let white = Array(repeating: Color.white.rawValue, count: map[Color.white.rawValue, default: 0])
        let blue = Array(repeating: Color.blue.rawValue, count: map[Color.blue.rawValue, default: 0])
        
        colors = red + white + blue
    }
}

enum Color: Int {
    case red = 0
    case white = 1
    case blue = 2
}
