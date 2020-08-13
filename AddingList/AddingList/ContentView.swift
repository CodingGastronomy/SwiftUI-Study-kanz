//
//  ContentView.swift
//  AddingList
//
//  Created by Kanz on 2020/08/13.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tasks: [Task] = []
    
    var body: some View {
        
        List {
            Button(action: addTask) {
                Text("Add Task")
            }
            
            
            ForEach(tasks) { task in
                Text(task.name)
            }
        }
    }
    
    private func addTask() {
        self.tasks.append(Task(name: "NEW"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
