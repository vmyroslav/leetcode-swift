//
//  ValidAnagramTests.swift
//  
//
//  Created by Myroslav Vivcharyk on 30.08.23.
//

import XCTest
@testable import leetcode_swift

final class ValidAnagramTests: XCTestCase {
        
            struct TestCase {
                let input: (String, String)
                let expected: Bool
            }
            
            let solution = ValidAnagram()
        
            func testSolution() throws {
                let testCases = [
                    TestCase(input: ("anagram", "nagaram"), expected: true),
                    TestCase(input: ("rat", "car"), expected: false),
                    TestCase(input: ("a", "ab"), expected: false),
                    TestCase(input: ("ab", "a"), expected: false),
                    TestCase(input: ("a", "a"), expected: true),
                    TestCase(input: ("a", "b"), expected: false),
                    TestCase(input: ("", ""), expected: true),
                    TestCase(input: ("", "a"), expected: false),
                    TestCase(input: ("a", ""), expected: false),
                    TestCase(input: ("a", "a"), expected: true),
                    TestCase(input: ("ab", "ba"), expected: true),
                    TestCase(input: ("ab", "ab"), expected: true),
                    TestCase(input: ("abc", "cba"), expected: true),
                    TestCase(input: ("abc", "bca"), expected: true),
                    TestCase(input: ("abc", "bac"), expected: true),
                    TestCase(input: ("abc", "cab"), expected: true),
                    TestCase(input: ("abc", "acb"), expected: true),
                    TestCase(input: ("abc", "abc"), expected: true),
                    TestCase(input: ("abc", "abd"), expected: false),
                    TestCase(input: ("abc", "abcd"), expected: false),
                    TestCase(input: ("abc", "abcde"), expected: false),
                    TestCase(input: ("abc", "abcdef"), expected: false),
                    TestCase(input: ("abc", "abcdefg"), expected: false),
                    TestCase(input: ("abc", "abcdefgh"), expected: false),
                    TestCase(input: ("abc", "abcdefghi"), expected: false),
                    TestCase(input: ("abc", "abcdefghij"), expected: false),
                    TestCase(input: ("abc", "abcdefghijk"), expected: false),
                    TestCase(input: ("abc", "abcdefghijkl"), expected: false),
                    TestCase(input: ("abc", "abcdefghijklm"), expected: false),
                    TestCase(input: ("abc", "abcdefghijklmn"), expected: false),
                    TestCase(input: ("abc", "abcdefghijklmno"), expected: false),
                    TestCase(input: ("abc", "abcdefghijklmnop"), expected: false),
                ]

                for testCase in testCases {
                    let resultDicts = solution.solutionCompareDicts(testCase.input.0, testCase.input.1)
                    let resultSorted = solution.solutionCompareDicts(testCase.input.0, testCase.input.1)
                    let result = solution.solutionCompareDicts(testCase.input.0, testCase.input.1)
                    XCTAssertEqual(resultDicts, testCase.expected, "Failed for solutionCompareDicts,  input: \(testCase.input)")
                    XCTAssertEqual(resultSorted, testCase.expected, "Failed for solutionSorted, input: \(testCase.input)")
                    XCTAssertEqual(result, testCase.expected, "Failed for solution, input: \(testCase.input)")
                }
            }
}
