//
//  SwiftUI+Binding.swift
//  MotorApp
//
//  Created by Pedro Valentini on 31/03/21.
//

import SwiftUI

extension Binding {
    func onChange(_ handler: @escaping (Value) -> Void) -> Binding<Value> {
        Binding(
            get: { self.wrappedValue },
            set: {
                self.wrappedValue = $0
                handler($0)
            }
        )
    }
}
