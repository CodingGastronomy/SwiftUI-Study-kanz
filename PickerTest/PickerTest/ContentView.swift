//
//  ContentView.swift
//  PickerTest
//
//  Created by Kanz on 2020/09/01.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedColor = Color.purple
    @State private var selectedDate = Date()
    
    var body: some View {
        
        VStack {
            ColorPicker("Select Color", selection: self.$selectedColor)
            
            Spacer()
                .frame(height: 30)
            
            DatePicker("Select Date", selection: self.$selectedDate)
                .frame(height: 30.0)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
