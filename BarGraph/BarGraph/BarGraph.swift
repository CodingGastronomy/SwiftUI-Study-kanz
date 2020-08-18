//
//  BarGraph.swift
//  BarGraph
//
//  Created by Kanz on 2020/08/18.
//

import SwiftUI

struct BarGraph: View {
    
    let reports: [Report]
    
    var body: some View {
        VStack {
            HStack(alignment: .lastTextBaseline) {
                ForEach(self.reports, id:\.self) { report in
                    BarView(report: report)
                }
            }
        }
    }
}

struct BarGraph_Previews: PreviewProvider {
    static var previews: some View {
        BarGraph(reports: Report.all())
    }
}


struct BarView: View {
    
    let report: Report
    @State private var showGraph: Bool = false
    
    var body: some View {
        
        let value = report.revenus / 500
        let yValue = Swift.min(value * 20, 500)
        
        return VStack {
            Text(String(format: "$%.2f", report.revenus))
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: self.showGraph ? CGFloat(yValue) : 0.0)
                .onAppear {
                    withAnimation(.spring()) {
                        self.showGraph = true
                    }
                }
            
            Text(report.year)
        }
    }
}
