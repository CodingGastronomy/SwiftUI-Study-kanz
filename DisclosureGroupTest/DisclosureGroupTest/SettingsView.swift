//
//  SettingsView.swift
//  DisclosureGroupTest
//
//  Created by Kanz on 2020/09/02.
//

import SwiftUI

struct SettingsView: View {
    @State private var animalsExpanded: Bool = true
    @State private var fruitsExpanded: Bool = true
    
    let animals = ["🐶", "🐱", "🐯", "🙊"]
    let fruits = ["🍎", "🍐", "🍉"]
    
    var body: some View {
        Form {
            DisclosureGroup(
                isExpanded: self.$animalsExpanded,
                content: {
                    HStack {
                        ForEach(animals, id: \.self) { animal in
                            Text(animal)
                                .font(.system(size: 50))
                        }
                    }
                },
                label: { Text("Animals") }
            )
            
            
            DisclosureGroup(
                isExpanded: self.$fruitsExpanded,
                content: {
                    List(self.fruits, id: \.self) { fruit in
                        Text(fruit)
                    }
                },
                label: { Text("Fruits") }
)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
