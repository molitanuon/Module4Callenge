//
//  ContentView.swift
//  LibBooks
//
//  Created by Molita Nuon on 8/20/21.
//

import SwiftUI

struct BookList: View {
    
    //Create an instance of the Model class
    @EnvironmentObject var model: BookModel
    
    var body: some View {
       
        
        NavigationView{
            
            ScrollView{
                
                VStack(alignment: .leading, spacing: 20)
                {
                    ForEach(model.books){b in
                        
                        NavigationLink(
                            destination: PreviewView(book:b),
                            label: {
                                BookCovers(book:b)
                            }).padding([.leading, .trailing], 20)
                    }
                }.padding(.top)
                
            }.navigationBarTitle("My Library")
        }
    }
}

struct BookList_Previews: PreviewProvider {
    static var previews: some View {
        BookList().environmentObject(BookModel())
            .previewDevice("iPhone 12")
    }
}
