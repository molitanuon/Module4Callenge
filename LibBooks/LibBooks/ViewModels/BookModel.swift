//
//  BookModel.swift
//  LibBooks
//
//  Created by Molita Nuon on 8/20/21.
//

import Foundation

class BookModel: ObservableObject{
    
    @Published var books = [Book]()
    
    init(){
        //Create an instance of data service
        //Get the data
        
        self.books = DataService.getLocalData()
    }
    
    func updateFavorite(forId: Int)
    {
        if let index = books.firstIndex(where: {$0.id == forId})
        {
            books[index].isFavourite.toggle()
        }
    }
    
    func updateRating(forId: Int, rate: Int)
    {
        if let index = books.firstIndex(where: {$0.id == forId})
        {
            books[index].rating = rate
        }
    }
    
    func updatePage(forId: Int, page: Int)
    {
        if let index = books.firstIndex(where: {$0.id == forId})
        {
            books[index].currentPage = page
        }
    }
}

