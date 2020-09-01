//
//  ContentView.swift
//  GridMore
//
//  Created by Kanz on 2020/09/02.
//

import SwiftUI

struct ContentView: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: self.columns, spacing: 10, pinnedViews: [.sectionHeaders]) {
                    
                    ForEach(1..<11, id: \.self) { index in
                        
                        Section(header: self.headerView(index)) {
                            ForEach(1..<20) { _ in
                                Rectangle()
                                    .fill(Color.red)
                                    .aspectRatio(contentMode: .fit)
                                    .id(UUID())
                            }
                        }
                    }
                }
                .padding()
            }
            
            .navigationTitle("Pinned Views")
        }
    }
    
    private func headerView(_ index: Int) -> some View {
        Text("Section: \(index)")
            .padding()
            .foregroundColor(Color.white)
            .font(.title)
            .frame(maxWidth: .infinity)
            .background(Color.blue)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
