//
//  LagacyGrid.swift
//  Grid
//
//  Created by Kanz on 2020/08/13.
//

import SwiftUI

struct LagacyGrid: View {
    
    let dishes = Dish.all(30)
    
    
    var body: some View {
        
        let chunkedDishes = dishes.chunked(into: 3)
        
        List {
            // Row
            ForEach(0..<chunkedDishes.count) { index in
                HStack {
                  
                    ForEach(chunkedDishes[index]) { dish in
                        
                        Image(dish.imageURL)
                            .resizable()
                            .frame(width: 150, height: 150)
                            .scaledToFit()
                    }
                }
            }
        }
    }
}

struct LagacyGrid_Previews: PreviewProvider {
    static var previews: some View {
        LagacyGrid()
    }
}
