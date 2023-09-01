//
//  TwoSumTests.swift
//
//
//  Created by Myroslav Vivcharyk on 23.08.23.
//

import XCTest
@testable import leetcode_swift


final class SumOfThreeTests: XCTestCase {

    struct TestCase {
        let input: [Int]
        let target: Int
        let expected: Bool
    }
    
    let solution = SumOfThreeValues()

    func testSolution() throws {
        let testCases = [
            TestCase(input: [3, 7, 1, 2, 8, 4, 5], target: 21, expected: false),
            TestCase(input: [-1, 2, 1, -4, 5, -3], target: -8, expected: true),
            TestCase(input: [1, 2, 3, 4, 5, 6, 7, 8, 9, 15], target: 18, expected: true),
            TestCase(input: [1, 2, 3, 4, 5, 6, 7, 8, 9, 15], target: 32, expected: true),
            TestCase(input: [1, 2, 3, 4, 5, 6, 7, 8, 9, 15], target: 33, expected: false),
            TestCase(input: [1, 2, 3, 4, 5, 6, 7, 8, 9, 15], target: 5, expected: false),
            TestCase(input: [1, 2, 3, 4, 5, 6, 7, 8, 9, 15], target: 6, expected: true),
            TestCase(input: [1, 2, 3, 4, 5, 6, 7, 8, 9, 15], target: 18, expected: true),
            TestCase(input: [1, 2, 3, 4, 5, 6, 7, 8, 9, 15], target: 32, expected: true),
            TestCase(input: [1, 2, 3, 4, 5, 6, 7, 8, 9, 15], target: 33, expected: false),
            TestCase(input: [12, 3, 1, 2, -6, 5, -8, 6], target: 0, expected: true),
            TestCase(input: [-2, -1, 1, 2, 3, 4, 5, 6, 7, 8, 9], target: 6, expected: true),
        ]

        for testCase in testCases {
            let result = solution.naiveSolution(testCase.input, testCase.target)
            XCTAssertEqual(result, testCase.expected, "Failed for input: \(testCase.input), target: \(testCase.target)")
        }
    }
}
