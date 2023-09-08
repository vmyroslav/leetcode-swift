//
//  BestTimeToBuyStockTests.swift
//  
//
//  Created by Myroslav Vivcharyk on 06.09.23.
//

import XCTest
@testable import leetcode_swift

final class BestTimeToBuyStockTests: XCTestCase {
    
        struct TestCase {
            let input: [Int]
            let expected: Int
        }
        
        let solution = BestTimeToBuyStock()
    
        func testSolution() throws {
            let testCases = [
                TestCase(input: [7,1,5,3,6,4], expected: 5),
                TestCase(input: [7,6,4,3,1], expected: 0),
                TestCase(input: [1], expected: 0),
                TestCase(input: [], expected: 0),
                TestCase(input: [1, 2], expected: 1),
                TestCase(input: [2, 1], expected: 0),
            ]
    
            for testCase in testCases {
                let result = solution.solution(testCase.input)
                let resultDP = solution.solutionDP(testCase.input)
                XCTAssertEqual(result, testCase.expected, "Failed for solution with input: \(testCase.input)")
                XCTAssertEqual(resultDP, testCase.expected, "Failed for DP solution with input: \(testCase.input)")
            }
        }
}
