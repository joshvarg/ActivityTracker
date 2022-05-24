//
//  AddActivityView.swift
//  Activity Tracker
//
//  Created by Joshua Varghese on 5/23/22.
//

import SwiftUI

struct AddActivityView: View {
    
    @State private var title: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Create a new activity")
                .font(.title3).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField("Enter activity here", text: $title)
                .textFieldStyle(.roundedBorder)
            
            Button {
                print("Activity added!")
                dismiss()
            } label: {
                Text("Add task")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color(hue: 0.6, saturation: 0.7, brightness: 0.4))
                    // the order of formats matter!!!!
                    .cornerRadius(30)
                    
            }
            
            Spacer()
        }
        .padding(.top, 40)
        .padding(.horizontal)
    }
}

struct AddActivityView_Previews: PreviewProvider {
    static var previews: some View {
        AddActivityView()
    }
}
