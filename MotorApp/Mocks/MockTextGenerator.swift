//
//  MockTextGenerator.swift
//  MotorAppTests
//
//  Created by Pedro Valentini on 31/03/21.
//

import XCTest
@testable import MotorApp

struct MockTextGenerator: TextGenerator {
    var makeRandomParagrathResult = ""
    
    func makeRandomParagrath() -> String {
        return makeRandomParagrathResult
    }
}
