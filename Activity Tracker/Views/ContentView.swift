//
//  ContentView.swift
//  Activity Tracker
//
//  Created by Joshua Varghese on 5/21/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showAddActivityView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
        // alignment means bottom right
            ActivityView()
            SmallAddButton()
                .padding()
                .onTapGesture {
                    showAddActivityView.toggle()
                }
        }
        .sheet(isPresented: $showAddActivityView) {
            AddActivityView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
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
