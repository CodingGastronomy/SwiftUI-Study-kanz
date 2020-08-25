//
//  SearchBar.swift
//  SearchBarTest
//
//  Created by Kanz on 2020/08/25.
//

import Foundation
import SwiftUI

struct SearchBar: UIViewRepresentable {
    
    class Coordinator: NSObject, UISearchBarDelegate {
        @Binding var text: String
        
        init(text: Binding<String>) {
            _text = text
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
    }
    
    @Binding var text: String
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(text: $text)
    }
    
    func makeUIView(context: Context) -> some UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator
        return searchBar
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.text = text
    }
}
