//
//  CoreDataManager.swift
//  Activity Tracker
//
//  Created by Joshua Varghese on 5/22/22.
//

import Foundation
import CoreData

class CoreDataManager {
    static let shared = CoreDataManager(modelName: "Activities")
    
    let persistentContainer: NSPersistentContainer
    var viewContext: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    init(modelName: String) {
        persistentContainer = NSPersistentContainer(name: modelName)
    }
    
    func load(completion: (()->Void)? = nil) {
        persistentContainer.loadPersistentStores {
            (description, error) in
            guard error == nil else {
                fatalError(error!.localizedDescription)
            }
        }
    }
}
