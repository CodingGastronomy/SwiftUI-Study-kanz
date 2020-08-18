//
//  CoffeeCell.swift
//  Previews
//
//  Created by Kanz on 2020/08/18.
//

import Foundation
import SwiftUI

struct CoffeeCell: View {
    
    let coffee: Coffee
    
    var body: some View {
//        NavigationView { // Dark Mode Xcode bug.. (12.0 beta 4)
            HStack {
                Image(coffee.imageURL)
                    .resizable()
                    .frame(width: 100.0, height: 100.0)
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text(coffee.name)
                    Text(String(format: "￦%.0f", coffee.price))
                        .foregroundColor(Color.green)
                }
            }
            .padding(5.0)
        }
//    }
}

#if DEBUG
struct CoffeeCell_Preview: PreviewProvider {
    static var previews: some View {
        
        Group { // Group
            /*
            // - Dynamic Font Sizes
            CoffeeCell()
                .previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .extraSmall) // ContentSizeCategory
            
            CoffeeCell()
                .previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .extraLarge)
            
            CoffeeCell()
                .previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .extraExtraLarge)
            
            // - Dark mode
            CoffeeCell()
                .previewLayout(.sizeThatFits)
                .colorScheme(.dark)
            
            // - Devices
             CoffeeCell()
             .previewLayout(.sizeThatFits)
             .previewDevice("iPhone SE")
             */
            
            CoffeeCell(coffee: Coffee.all()[0])
                .previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .extraExtraLarge)
        }
    }
}


#endif
