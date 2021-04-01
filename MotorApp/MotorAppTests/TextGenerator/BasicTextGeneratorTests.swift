//
//  BasicTextGeneratorTests.swift
//  MotorAppTests
//
//  Created by Pedro Valentini on 31/03/21.
//

import XCTest
@testable import MotorApp

final class BasicTextGeneratorTests: XCTestCase {

    private var sut: BasicTextGenerator!

    override func tearDownWithError() throws {
        sut = nil
    }
    
    func text_oneWordGeneration() throws {
        sut = BasicTextGenerator(config: BasicTextGenerator.Config(wordsList: ["aa", "BB"],
                                                                   minNumberOfWords: 1,
                                                                   maxNumberOfWords: 1))
        // Run multiple times how it is random generator
        for _ in 0...5 {
            let text = sut.makeRandomParagrath()
            XCTAssert(text == "aa" || text == "BB")
        }
    }
    
    func test_testLimits() throws {
        let list = ["Aa", "bb", "cc"]
        sut = BasicTextGenerator(config: BasicTextGenerator.Config(wordsList: list,
                                                                   minNumberOfWords: 5,
                                                                   maxNumberOfWords: 10))
        // Run multiple times how it is random generator
        for _ in 0...5 {
            let text = sut.makeRandomParagrath()
            XCTAssert(text.wordsCount > 4)
            XCTAssert(text.wordsCount < 11)
        }
    }
}
