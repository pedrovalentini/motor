//
//  TextGenerator.swift
//  MotorApp
//
//  Created by Pedro Valentini on 31/03/21.
//

import Foundation

struct BasicTextGenerator: TextGenerator {
    
    // Sample word list to the demonstration, should be a real dictionary
    static let defaultConfig = Config(wordsList: ["hi", "how", "are", "you", "I", "good", "red", "blue", "dog", "tree", "sample", "code", "cat"],
                                      minNumberOfWords: 8,
                                      maxNumberOfWords: 16)
    
    struct Config {
        let wordsList: [String]
        let minNumberOfWords: Int
        let maxNumberOfWords: Int
    }
    
    private let config: Config

    private var randomNumberOfWords: Int {
        Int.random(in: config.minNumberOfWords...config.maxNumberOfWords)
    }
    
    init(config: Config = Self.defaultConfig) {
        self.config = config
    }

    /// Generate random paragrath
    func makeRandomParagrath() -> String {
        return randomWordList(with: randomNumberOfWords)
            .joined(separator: " ")
    }
    
    // MARK: Private methods
    
    private func randomWord() -> String {
        guard !config.wordsList.isEmpty else { return "" }
        let index = Int.random(in: 0...config.wordsList.count-1)
        return config.wordsList[index]
    }
    
    private func randomWordList(with numberOfWords: Int) -> [String] {
        var words = [String]()
        for _ in 0...numberOfWords-1 {
            words.append(randomWord())
        }
        debugPrint("randomWordList ", numberOfWords, words)
        return words
    }
}
