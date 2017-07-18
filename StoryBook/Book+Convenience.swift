//
//  Book+Convenience.swift
//  StoryBook
//
//  Created by Stanfield on 7/18/17.
//  Copyright © 2017 Josh Stanfield. All rights reserved.
//

import Foundation
import CoreData

extension Book {
    
    @discardableResult convenience init(name: String, context: NSManagedObjectContext = CoreDataStack.context) {
        
        self.init(context: context)
        self.name = name
    }
}
