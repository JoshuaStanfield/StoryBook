//
//  Page+Convenience.swift
//  StoryBook
//
//  Created by Stanfield on 7/18/17.
//  Copyright © 2017 Josh Stanfield. All rights reserved.
//

import UIKit
import Foundation
import CoreData

extension Page {
    
    @discardableResult convenience init(text: String, pageNumber: Double, photoData: Data, book: Book, context: NSManagedObjectContext = CoreDataStack.context) {
        
        self.init(context: context)
        self.text = text
        self.pageNumber = pageNumber
        self.photoData = photoData as NSData
        self.book = book
    }
}
