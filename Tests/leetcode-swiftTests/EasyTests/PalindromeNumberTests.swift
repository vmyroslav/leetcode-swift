//
//  PalindromeNumberTests.swift
//  
//
//  Created by Myroslav Vivcharyk on 23.08.23.
//

import XCTest
@testable import leetcode_swift

final class PalindromeNumberTests: XCTestCase {
    let solution = PalindromeNumber()
    
    struct TestCase {
        let input: Int
        let expected: Bool
    }
    
    func testSolution() throws {
        let testCases: [TestCase] = [
            TestCase(input: 121, expected: true),
            TestCase(input: -121, expected: false),
            TestCase(input: 10, expected: false),
        ]
        
        for testCase in testCases {
            XCTAssertEqual(solution.solutionIndexing(testCase.input), testCase.expected, "Failed for input: \(testCase.input) and expected: \(testCase.expected) solutionIndexing")
            XCTAssertEqual(solution.solutionReverseString(testCase.input), testCase.expected, "Failed for input: \(testCase.input) and expected: \(testCase.expected) solutionReverseString")
            XCTAssertEqual(solution.solutionDividing(testCase.input), testCase.expected, "Failed for input: \(testCase.input) and expected: \(testCase.expected) solutionDividing")
        }
    }
}
