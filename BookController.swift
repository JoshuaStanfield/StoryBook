//
//  BookController.swift
//  StoryBook
//
//  Created by Stanfield on 7/18/17.
//  Copyright © 2017 Josh Stanfield. All rights reserved.
//

import Foundation
import CoreData

class BookController {
    
    // Singleton
    
    static let shared = BookController()
    
    // Single Source of Truth
    
    var books: [Book] {
        
        let request: NSFetchRequest<Book> = Book.fetchRequest()
        return (try? CoreDataStack.context.fetch(request)) ?? []
    }
    
    // MARK: - CRUD functions
    
    // Create Book
    func createBookWith(name: String) {
        let _ = Book(name: name)
        saveToPersistentStore()
    }
    
    // Delete Whole Book
    func delete(book: Book) {
        if let moc = book.managedObjectContext {
            moc.delete(book)
            saveToPersistentStore()
        }
    }
    
    
    // MARK: - Save To CoreData
    
    func saveToPersistentStore() {
        let moc = CoreDataStack.context
        do {
            try moc.save()
        } catch {
            NSLog("There was a major problem with saving. \(error.localizedDescription)")
        }
    }
}
