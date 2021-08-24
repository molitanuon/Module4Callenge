//
//  Book.swift
//  LibBooks
//
//  Created by Molita Nuon on 8/20/21.
//

import Foundation

struct Book: Identifiable, Decodable{
    
    var id = 1
    var title = "Title"
    var author = "Author"
    var isFavourite = false
    var currentPage = 2
    var rating = 2
    var content = ["Testing is be done"]
    
}


