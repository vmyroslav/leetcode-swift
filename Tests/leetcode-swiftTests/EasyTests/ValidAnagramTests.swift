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
                let input: String
                let expected: Bool
            }
            
            let solution = ValidAnagram()
        
            func testSolution() throws {
                let testCases = [
                    TestCase(input: "A man, a plan, a canal: Panama", expected: true),
                    TestCase(input: "nagaram", expected: false),
                    TestCase(input: "manam", expected: true),
                    TestCase(input: "rat", expected: false),
                    TestCase(input: "car", expected: false),
                    TestCase(input: "a", expected: true),
                ]

                for testCase in testCases {
                    let result = solution.solution(testCase.input)
                    XCTAssertEqual(result, testCase.expected, "Failed for input: \(testCase.input)")
                }
            }
}
