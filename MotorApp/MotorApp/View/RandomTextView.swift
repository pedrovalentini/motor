//
//  RandomTextView.swift
//  MotorApp
//
//  Created by Pedro Valentini on 29/03/21.
//

import SwiftUI

struct RandomTextView: View {
    @ObservedObject private var viewModel: RandomTextViewModel
    
    init(viewModel: RandomTextViewModel = RandomTextViewModel()) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text(LocalizedStringKey("Random Text"))) {
                    TextEditor(text: $viewModel.text)
                        .onChange(of: viewModel.text,
                                  perform: viewModel.onChange)
                        .frame(height: 160)
                    Text(LocalizedStringKey("\(viewModel.wordsCount) words"))
                        .foregroundColor(.secondary)
                    Button(LocalizedStringKey("Make Random"),
                           action: viewModel.setRandomText)
                }
            }
            .navigationBarTitle(LocalizedStringKey("Motor"))
        }
    }
}

#if DEBUG
struct RandomTextView_Previews: PreviewProvider {
    static var previews: some View {
        RandomTextView(viewModel: RandomTextViewModel())
    }
}
#endif
