//
//  ContentView.swift
//  BarGraph
//
//  Created by Kanz on 2020/08/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        BarGraph(reports: Report.all())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
