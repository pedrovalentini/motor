//
//  RandomTextViewModel.swift
//  MotorApp
//
//  Created by Pedro Valentini on 29/03/21.
//

import Foundation
import Combine

final class RandomTextViewModel: ObservableObject {
    @Published var text = ""
    @Published var wordsCount = 0
    
    private let textGenerator: TextGenerator
    
    init(textGenerator: TextGenerator = BasicTextGenerator()) {
        self.textGenerator = textGenerator
    }
    
    func onChange(_ value: String) {
        self.wordsCount = value.wordsCount
    }
    
    func setRandomText() {
        text = textGenerator.makeRandomParagrath()
    }
}
