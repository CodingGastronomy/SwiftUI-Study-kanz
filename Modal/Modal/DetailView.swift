//
//  DetailView.swift
//  Modal
//
//  Created by Kanz on 2020/08/22.
//

import SwiftUI

struct DetailView: View {
    @Binding var flagViewModel: FlagViewModel
    
    var body: some View {
        VStack {
            Text(self.flagViewModel.flag)
                .font(.custom("Arial", size: 200))
            
            TextField("Enter Country Name", text: self.$flagViewModel.country)
                .padding()
                .fixedSize()
            
            Button("Submit") {
                self.flagViewModel.showModal.toggle()
            }
        }
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(flagViewModel: .constant(FlagViewModel()))
    }
}
