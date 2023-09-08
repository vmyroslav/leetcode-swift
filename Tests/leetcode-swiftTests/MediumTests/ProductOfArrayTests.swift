//
//  BestTimeToBuyStockTests.swift
//
//
//  Created by Myroslav Vivcharyk on 06.09.23.
//

import XCTest
@testable import leetcode_swift

final class ProductOfArrayTests: XCTestCase {
    
        struct TestCase {
            let input: [Int]
            let expected: [Int]
        }
        
        let solution = ProductOfArray()
    
        func testSolution() throws {
            let testCases = [
                TestCase(input: [1,2,3,4], expected: [24,12,8,6]),
                TestCase(input: [-1,1,0,-3,3], expected: [0,0,9,0,0]),
            ]
    
            for testCase in testCases {
                let result = solution.solution(testCase.input)
                XCTAssertEqual(result, testCase.expected, "Failed for solution with input: \(testCase.input)")
            }
        }
}
