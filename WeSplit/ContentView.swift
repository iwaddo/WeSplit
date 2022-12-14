//
//  ContentView.swift
//  WeSplit
//
//  Created by Ian Waddington on 13/11/2022.
//

import SwiftUI

struct ContentView: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        NavigationView {
            Form {
                Picker("Select you student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0 )
                    }
                }
                Text("You selected: \(selectedStudent)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
