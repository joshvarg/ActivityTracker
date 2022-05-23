//
//  Activity+CoreDataClass.swift
//  Activity Tracker
//
//  Created by Joshua Varghese on 5/22/22.
//
//

import Foundation
import CoreData

@objc(Activity)
public class Activity: NSManagedObject {
    var title: String {
        return name.trimmingCharacters(in: .newlines)
    }
}
