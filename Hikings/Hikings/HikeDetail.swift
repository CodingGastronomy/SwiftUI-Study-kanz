//
//  HikeDetail.swift
//  Hikings
//
//  Created by Kanz on 2020/08/13.
//

import SwiftUI

struct HikeDetail: View {
    @State private var zoomed: Bool = false
    let hike: Hike
    
    var body: some View {
        VStack {
            Image(hike.imageURL)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
                }
            
            Text(hike.name)
            Text(String(format: "%.2f miles", hike.miles))
        }
        .navigationBarTitle(hike.name, displayMode: .inline)
    }
}

struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: Hike.all()[0])
    }
}
