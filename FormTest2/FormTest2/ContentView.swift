//
//  ContentView.swift
//  FormTest2
//
//  Created by Kanz on 2020/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            Form {
                
                // 1.
                Section(header: Text("")) {
                    HStack {
                        Text("Show Previews")
                        Spacer()
                        NavigationLink(destination: Text("")) {
                            Text("Always")
                                .foregroundColor(Color.gray)
                        }.fixedSize()
                    }
                }
                
                // 2.
                Section(header: Text("Notification previews will be shown whether the iPhone is locked or unlocked").textCase(nil).lineLimit(nil).padding(10)) {
                    NavigationLink(destination: Text("")) {
                        Text("Siri Suggestions")
                    }
                }
                
                // 3.
//                Section(header: Text("Choose while apps can suggest shortcuts on the lock screen\n\nNOTIFICATOIN STYLE").textCase(nil)) {
//                }
                
                Section(header: VStack(alignment: .leading) {
                    Text("Choose while apps can suggest shortcuts on the lock screen")
                        .textCase(nil)
                        .lineLimit(2)
                        .padding(2)
                    Text("NOTIFICATOIN STYLE")
                        .padding(2)
                }) {
                    List {
                        ForEach(1...10, id: \.self) { index in
                            Text("\(String.randomEmoji()) \(index)")
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension String {
    static func randomEmoji() -> String {
        let range = [UInt32](0x1F601...0x1F64F)
        let ascii = range[Int(drand48() * (Double(range.count)))]
        let emoji = UnicodeScalar(ascii)?.description
        return emoji ?? ""
    }
}
