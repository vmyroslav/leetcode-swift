//
//  PalindromeNumberTests.swift
//
//
//  Created by Myroslav Vivcharyk on 23.08.23.
//

import XCTest
@testable import leetcode_swift

final class LongestCommonPrefixTests: XCTestCase {
    let solution = LongestCommonPrefix()

    struct TestCase {
        let input: [String]
        let expected: String
    }
    
    func testSolution() throws {
        let testCases = [
            TestCase(input: ["flower","flow","flight"], expected: "fl"),
            TestCase(input: ["dog","racecar","car"], expected: ""),
            TestCase(input: ["dog","dog","dog"], expected: "dog"),
        ]

        for testCase in testCases {
            let result = solution.solutionNaive(testCase.input)
            XCTAssertEqual(result, testCase.expected, "Failed for input: \(testCase.input)")
        }
    }
}
