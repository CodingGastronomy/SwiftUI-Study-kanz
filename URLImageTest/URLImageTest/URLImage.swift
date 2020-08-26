//
//  URLImage.swift
//  URLImageTest
//
//  Created by Kanz on 2020/08/26.
//

import SwiftUI

struct URLImage: View {
    
    let url: String
    let placeholder: String
    
    @ObservedObject var imageLoader = ImageLoader()
    
    init(url: String, placeholder: String = "placeholder") {
        self.url = url
        self.placeholder = placeholder
        self.imageLoader.downloadImage(url: self.url)
    }
    
    var body: some View {
        
        if let data = self.imageLoader.downloadedData,
           let uiImage = UIImage(data: data) {
            return Image(uiImage: uiImage)
                .resizable()
        } else {
            return Image("placeholder")
                .resizable()
        }
    }
}

struct URLImage_Previews: PreviewProvider {
    static var previews: some View {
        URLImage(url: "https://avatars2.githubusercontent.com/u/6590255?s=460&u=dbfae206cd21bf8a6ddb3d80bf5de19747464372&v=4")
    }
}
