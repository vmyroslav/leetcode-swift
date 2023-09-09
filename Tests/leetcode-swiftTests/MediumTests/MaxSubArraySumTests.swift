import XCTest
@testable import leetcode_swift

final class MaxSubArraySumTests: XCTestCase {
    
        struct TestCase {
            let input: [Int]
            let expected: Int
        }
        
        let solution = MaxSubArraySum()
    
        func testSolution() throws {
            let testCases = [
                TestCase(input: [-2,1,-3,4,-1,2,1,-5,4], expected: 6),
                TestCase(input: [-2,-3,4,-1,-2,1,5,-3], expected: 7),
                TestCase(input: [1], expected: 1),
                TestCase(input: [5,4,-1,7,8], expected: 23),
                TestCase(input: [-1], expected: -1),
                TestCase(input: [-2, -1], expected: -1),
            ]

            for testCase in testCases {
                let result = solution.solution(testCase.input)
                XCTAssertEqual(result, testCase.expected, "Failed for solution with input: \(testCase.input)")
            }
        }
}
