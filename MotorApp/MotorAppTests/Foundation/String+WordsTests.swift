//
//  String+WordsTests.swift
//  MotorAppTests
//
//  Created by Pedro Valentini on 31/03/21.
//

import XCTest
@testable import MotorApp

final class String_WordsTests: XCTestCase {

    func test_wordsCount() throws {
        XCTAssertEqual("".wordsCount, 0)
        XCTAssertEqual("a".wordsCount, 1)
        XCTAssertEqual("aaa bb c 555".wordsCount, 4)
        XCTAssertEqual("asdasdo19283a';c asd-asd-dlsald_+-asdç !!!".wordsCount, 3)
    }
}
