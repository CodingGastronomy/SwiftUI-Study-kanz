//
//  ContentView.swift
//  TextEditorTest
//
//  Created by Kanz on 2020/09/02.
//

import SwiftUI

struct ContentView: View {
    
    @State private var description: String = ""
    
    var body: some View {
        TextEditor(text: self.$description)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
