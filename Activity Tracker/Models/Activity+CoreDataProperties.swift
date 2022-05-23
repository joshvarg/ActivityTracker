//
//  Activity+CoreDataProperties.swift
//  Activity Tracker
//
//  Created by Joshua Varghese on 5/22/22.
//
//

import Foundation
import CoreData


extension Activity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Activity> {
        return NSFetchRequest<Activity>(entityName: "Activity")
    }

    @NSManaged public var id: UUID!
    @NSManaged public var name: String!
    @NSManaged public var timeStart: Date!
    @NSManaged public var timeEnded: Date!

}

extension Activity : Identifiable {

}
