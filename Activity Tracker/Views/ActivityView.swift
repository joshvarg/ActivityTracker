//
//  ActivityView.swift
//  Activity Tracker
//
//  Created by Joshua Varghese on 5/23/22.
//

import SwiftUI

struct ActivityView: View {
    var body: some View {
        VStack {
            Text("My activities")
                .font(.title3).bold()
                // changes font size to title3 and boldens it
                .padding()
                // adds padding around the text area
                .frame(maxWidth: .infinity, alignment: .leading)
                // alignment is deciding if the frame is left, center, or
                // right aligned
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        // applys a frame modifier with infinite width and infinite
        // height as the bounds i.e. takes the entire screen
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}
