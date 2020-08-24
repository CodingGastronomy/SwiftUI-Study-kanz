//
//  ContentView.swift
//  CameraCapture
//
//  Created by Kanz on 2020/08/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showImagePicker: Bool = false
    @State private var image: Image? = nil
    
    var body: some View {
        VStack {
            
            image?
                .resizable()
                .scaledToFit()
            
            Button("Open Camera") {
                self.showImagePicker.toggle()
            }
            .padding()
            .background(Color.green)
            .foregroundColor(Color.white)
            .cornerRadius(10)
        }
        .sheet(isPresented: self.$showImagePicker, onDismiss: {
            
        }, content: {
            PhotoCaptureView(showImagePicker: self.$showImagePicker,
                             image: self.$image)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
