//
//  TwoSumTests.swift
//  
//
//  Created by Myroslav Vivcharyk on 23.08.23.
//

import XCTest
@testable import leetcode_swift


final class TwoSumTests: XCTestCase {
    
    struct TestCase {
        let nums: [Int]
        let target: Int
        let expected: [Int]
    }
    
    let solution = TwoSum()

    func testSolution() throws {
        let testCases: [TestCase] = [
            TestCase(nums: [2, 7, 11, 15], target: 9, expected: [0, 1]),
            TestCase(nums: [3, 2, 4], target: 6, expected: [1, 2]),
            TestCase(nums: [3, 3], target: 6, expected: [0, 1])
        ]
        
        for testCase in testCases {
            XCTAssertEqual(solution.solution(testCase.nums, testCase.target), testCase.expected, "Failed for nums: \(testCase.nums), target: \(testCase.target)")
        }
    }
}
