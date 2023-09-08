//
//  BestTimeToBuyStockTests.swift
//
//
//  Created by Myroslav Vivcharyk on 08.09.23.
//

import XCTest
@testable import leetcode_swift

final class SortColorsTests: XCTestCase {
    
        struct TestCase {
            let input: [Int]
            let expected: [Int]
        }
        
        let solution = SortColors()
    
        func testSolution() throws {
            let testCases = [
                TestCase(input: [2,0,2,1,1,0], expected: [0,0,1,1,2,2]),
                TestCase(input: [2,0,1], expected: [0,1,2]),
                TestCase(input: [0], expected: [0]),
                TestCase(input: [1], expected: [1]),
            ]
    
            for testCase in testCases {
                var input = testCase.input
                var mapInput = testCase.input
                solution.solution(&input)
                solution.naiveSolution(&mapInput)
                XCTAssertEqual(input, testCase.expected, "Failed for solution with input: \(testCase.input)")
                XCTAssertEqual(mapInput, testCase.expected, "Failed for solution with input: \(testCase.input)")
            }
        }
}
