//
//  ActivityRow.swift
//  Activity Tracker
//
//  Created by Joshua Varghese on 5/23/22.
//

import SwiftUI

struct ActivityRow: View {
    var activity: String
    var completed: Bool
    var body: some View {
        HStack(spacing: 20) {
            Text(completed ? "Done:" : "Not done:")
            
            Text(activity)
        }
    }
}

struct ActivityRow_Previews: PreviewProvider {
    static var previews: some View {
        ActivityRow(activity: "act1", completed: true)
    }
}
