//
//  ContentView.swift
//  Activity Tracker
//
//  Created by Joshua Varghese on 5/21/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showAddMenu = false
    
    var body: some View {
        NavigationView {
            VStack {
                if showAddMenu {
                    AddView()
                        .navigationTitle("Add Activity")
                }
                ListView()
                    .navigationTitle("Activities")
                    .toolbar {
                        Button("+") {
                            showAddMenu.toggle()
                        }
                    }
                Spacer()
            }
        }
    }
}

struct ListView: View {
    var body: some View {
        List(0..<5) { item in
            VStack(alignment: .leading) {
                Text("Activity 1")
                Text("Activity 2")
            }
        }
        
    }
}

struct AddView: View {
    @State private var activity = ""
    @State private var timeEnded = Date()
    @State private var timeStart = Date()
    var body: some View {
        Form {
            TextField("Activity Name", text: $activity)
            DatePicker("Start Time", selection: $timeStart, displayedComponents: .hourAndMinute)
            DatePicker("End Time", selection: $timeEnded, displayedComponents: .hourAndMinute)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
        }
    }
}
