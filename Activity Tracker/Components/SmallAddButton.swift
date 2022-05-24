//
//  SmallAddButton.swift
//  Activity Tracker
//
//  Created by Joshua Varghese on 5/23/22.
//

import SwiftUI

struct SmallAddButton: View {
    var body: some View {
        ZStack {
        // z represents depth i.e. elements will be on top of one another
        // good for floating or sticky elements
            Circle()
                .frame(width: 50)
                .foregroundColor(Color(hue: 0.6, saturation: 0.7, brightness: 0.4))
            Text("+")
                .foregroundColor(.white)
                .font(.title).bold()
        }
        .frame(height: 50)
        // height of this zstack matches the width of the circle
    }
}

struct SmallAddButton_Previews: PreviewProvider {
    static var previews: some View {
        SmallAddButton()
    }
}
