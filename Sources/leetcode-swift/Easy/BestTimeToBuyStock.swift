/**
    Question Link: https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

    Example 1:
        Input: nums = [7,1,5,3,6,4]
        Output: 5
    
    Example 2:
        Input: nums = [7,6,4,3,1]
        Output: 0
 */

class BestTimeToBuyStock {
    // Time Complexity: O(n), Space Complexity: O(1)
    func solution(_ prices: [Int]) -> Int {
        var result = 0
        guard !prices.isEmpty else {
            return result
        }
        
        var minPrice = Int.max
        
        for price in prices {
            minPrice = min(price, minPrice)
            result = max(result, price - minPrice)
        }
        
        return result
    }
    
    // Time Complexity: O(n), Space Complexity: O(1)
    func solutionDP(_ prices: [Int]) -> Int {
        guard !prices.isEmpty else {
            return 0
        }
        
        var minPrice = prices[0]
        var profits = Array(repeating: 0, count: prices.count)
        
        for i in 1..<prices.count {
            minPrice = min(minPrice, prices[i])
            profits[i] = max(profits[i-1], prices[i] - minPrice)
            
        }
        
        return profits[profits.count - 1]
    }
}
