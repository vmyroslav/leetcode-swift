//
//  ContainsDuplicateTests.swift
//  
//
//  Created by Myroslav Vivcharyk on 30.08.23.
//

import XCTest
@testable import leetcode_swift

final class ContainsDuplicateTests: XCTestCase {
    
        struct TestCase {
            let input: [Int]
            let expected: Bool
        }
        
        let solution = ContainsDuplicate()
    
        func testSolution() throws {
            let testCases = [
                TestCase(input: [3, 3], expected: true),
                TestCase(input: [1, 2, 3, 1], expected: true),
                TestCase(input: [1, 2, 3, 4], expected: false),
                TestCase(input: [1, 1, 1, 3, 3, 4, 3, 2, 4, 2], expected: true),
            ]
    
            for testCase in testCases {
                let result = solution.solution(testCase.input)
                XCTAssertEqual(result, testCase.expected, "Failed for input: \(testCase.input)")
            }
        }
}
