//
//  RatingView.swift
//  RatingView
//
//  Created by Kanz on 2020/08/26.
//

import SwiftUI

struct RatingView: View {
    @Binding var rating: Int?
    
    var body: some View {
        HStack {
            ForEach(1...5, id: \.self) { index in
                
                Image(systemName: self.starType(index: index))
                    .foregroundColor(Color.yellow)
                    .onTapGesture {
                        self.rating = index
                    }
            }
        }
    }
    
    private func starType(index: Int) -> String {
        if let rating = self.rating {
            return index <= rating ? "star.fill" : "star"
        } else {
            return "star"
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: .constant(2))
    }
}
