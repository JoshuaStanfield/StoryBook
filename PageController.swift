//
//  PageController.swift
//  StoryBook
//
//  Created by Stanfield on 7/18/17.
//  Copyright © 2017 Josh Stanfield. All rights reserved.
//

import UIKit
import Foundation

class PageController {
    
    // MARK: - Singleton
    
    static let shared = PageController()
    
    func createPageWith(text: String, pageNumber: Double, image: UIImage, book: Book) {
        guard let data = UIImageJPEGRepresentation(image, 0.8) else { return }
        
        let _ = Page(text: text, pageNumber: pageNumber, photoData: data, book: book)
        
        
    }
    
}
