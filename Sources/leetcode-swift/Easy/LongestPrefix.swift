/**
    Question Link: https://leetcode.com/problems/longest-common-prefix/

    Example 1:
        Input: strs = ["flower","flow","flight"]
        Output: "fl"
    
    Example 2:
        Input: strs = ["dog","racecar","car"]
        Output: ""
        Explanation: There is no common prefix among the input strings.

 */

class LongestCommonPrefix {
    // Time Complexity: O(n*m), Space Complexity: O(1)
    func solutionNaive(_ strs: [String]) -> String {
        guard strs.count > 0 else { return "" }

        var prefix = strs[0]

        for i in 1..<strs.count {
            while !strs[i].hasPrefix(prefix) {
                prefix.removeLast()
            }
        }

        return prefix
    }
}
