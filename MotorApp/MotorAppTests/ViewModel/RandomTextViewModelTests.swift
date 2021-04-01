//
//  RandomTextViewModelTests.swift
//  MotorAppTests
//
//  Created by Pedro Valentini on 31/03/21.
//

import XCTest
@testable import MotorApp

final class RandomTextViewModelTests: XCTestCase {

    private var sut: RandomTextViewModel!
    private var generator: MockTextGenerator!
    
    override func setUpWithError() throws {
        generator = .init()
        sut = .init(textGenerator: generator)
    }

    override func tearDownWithError() throws {
        sut = nil
        generator = nil
    }
    
    func test_startValues() throws {
        XCTAssertEqual(sut.wordsCount, 0)
        XCTAssertEqual(sut.text, "")
    }

    func test_wordsCount() throws {
        sut.onChange("aa bb")
        XCTAssertEqual(sut.wordsCount, 2)
        sut.onChange("how are you doing?")
        XCTAssertEqual(sut.wordsCount, 4)
        sut.onChange("aa, bb aa-bb asdadssdsdsd 123 !!!")
        XCTAssertEqual(sut.wordsCount, 6)
    }
    
    func test_setRandomText() throws {
        generator = .init()
        generator.makeRandomParagrathResult = "new text"
        sut = .init(textGenerator: generator)
        
        sut.setRandomText()
        XCTAssertEqual(sut.text, "new text")
    }
}
