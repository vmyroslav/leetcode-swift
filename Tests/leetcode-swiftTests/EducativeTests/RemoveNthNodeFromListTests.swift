//
//  RemoveNthNodeFromListTests.swift
//
//
//  Created by Myroslav Vivcharyk on 02.09.23.
//

import XCTest
@testable import leetcode_swift


final class RemoveNthNodeFromListTests: XCTestCase {
    let solution = RemoveNthNodeFromList()

    struct TestCase {
        let input: [Int]
        let n: Int
        let expected: [Int]?
    }


    func testSolution() throws {
        let testCases = [
            TestCase(input: [1,2,3,4,5], n: 2, expected: [1,2,3,5]),
            TestCase(input: [1,2,3,4,5], n: 1, expected: [1,2,3,4]),
            TestCase(input: [1,2,3,4,5], n: 5, expected: [2,3,4,5]),
            TestCase(input: [1], n: 1, expected: nil),
            TestCase(input: [1,2], n: 1, expected: [1]),
        ]

        for testCase in testCases {    
            let result = solution.solution(LinkedListNode.new(from: testCase.input)!, testCase.n)
            let naiveResult = solution.naiveSolution(LinkedListNode.new(from: testCase.input)!, testCase.n)


            XCTAssertEqual(naiveResult?.toArray(), testCase.expected, "Failed for naive solution, input: \(testCase.input), n: \(testCase.n)")
            XCTAssertEqual(result?.toArray(), testCase.expected, "Failed for input: \(testCase.input), n: \(testCase.n)")
        }
    }

    func testRemoveFromHead() throws {
        let testCases = [
            TestCase(input: [1,2,3,4,5], n: 2, expected: [1,3,4,5]),
            TestCase(input: [1,2,3,4,5], n: 1, expected: [2,3,4,5]),
            TestCase(input: [1,2,3,4,5], n: 5, expected: [1,2,3,4]),
            TestCase(input: [1], n: 1, expected: nil),
            TestCase(input: [1,2], n: 1, expected: [2]),
        ]

        for testCase in testCases {            
            let result = solution.removeFromHead(LinkedListNode.new(from: testCase.input)!, testCase.n)
            XCTAssertEqual(result?.toArray(), testCase.expected, "Failed for input: \(testCase.input), n: \(testCase.n)")
        }
    }
}
