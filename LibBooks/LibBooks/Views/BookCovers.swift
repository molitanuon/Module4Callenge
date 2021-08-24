//
//  BookCovers.swift
//  LibBooks
//
//  Created by Molita Nuon on 8/23/21.
//

import SwiftUI

struct BookCovers: View {

    var book:Book
    
    var body: some View {
        
         ZStack(alignment: .leading){
                
                Rectangle()
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: -5, y: 5)
            
            VStack(alignment: .leading, spacing: 10){
            
                    HStack{
                        
                        Text(book.title)
                            .bold()
                            .font(.largeTitle)
                            .padding(.bottom, 0.5)
                            .padding([.top, .leading])
                            .foregroundColor(.black)
                        
                        if book.isFavourite
                        {
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.yellow)
                                .padding([.top, .leading])
                                
                        }
                    }
                    
                    Text(book.author)
                        .font(.subheadline)
                        .padding(.leading)
                        .foregroundColor(.black)
                    
                    Image("cover" + String(book.id))
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .cornerRadius(0)

                }
        }
    }
}

struct BookCovers_Previews: PreviewProvider {
    static var previews: some View {
        BookCovers(book: Book())
        .previewDevice("iPhone 12")
    }
}


