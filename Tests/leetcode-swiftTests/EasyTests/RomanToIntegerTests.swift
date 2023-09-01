//
//  RomanToIntegerTests.swift
//  
//
//  Created by Myroslav Vivcharyk on 23.08.23.
//

import XCTest
@testable import leetcode_swift

final class RomanToIntegerTests: XCTestCase {
    let solution = RomanToInteger()

    struct TestCase {
        let input: String
        let expected: Int
    }

    func testSolution() throws {
        let testCases: [TestCase] = [
            TestCase(input: "III", expected: 3),
            TestCase(input: "IV", expected: 4),
            TestCase(input: "IX", expected: 9),
            TestCase(input: "LVIII", expected: 58),
            TestCase(input: "MCMXCIV", expected: 1994),
        ]

        for testCase in testCases {
            XCTAssertEqual(solution.solution(testCase.input), testCase.expected, "Failed for input: \(testCase.input) and expected: \(testCase.expected)")
        }
    }
}
