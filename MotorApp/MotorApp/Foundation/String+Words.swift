//
//  String+Words.swift
//  MotorApp
//
//  Created by Pedro Valentini on 31/03/21.
//

import Foundation

extension String {
    /// Count number of words
    /// - today count characters and numbers as words too, should be filtered if required
    var wordsCount: Int {
        components(separatedBy: .whitespacesAndNewlines)
            .filter { !$0.isEmpty }.count
    }
}
