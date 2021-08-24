//
//  DetailsView.swift
//  LibBooks
//
//  Created by Molita Nuon on 8/23/21.
//

import SwiftUI

struct PreviewView: View {
    @EnvironmentObject var model: BookModel
    var book:Book
    @State var rating = 0
    
    var body: some View {
        VStack(alignment: .center){
            
            NavigationLink(destination: (
                BookContent(book: book)
            ), label: {
                VStack{
                    Text("Read Now!")
                        .font(.title)
                
                    Image("cover" + String(book.id))
                        .resizable()
                        .scaledToFit()
                        .padding()
                }
            })
           
            Text("Mark for later!")
                .bold()
                .font(.headline)
                .padding()
            
            Button(action: {model.updateFavorite(forId: book.id)
            }){
                Image(systemName: book.isFavourite ? "star.fill" : "star")
                    .resizable()
                    .frame(width: 30, height: 30)
            }.accentColor(.yellow)
            
            
            Text("Rate " + book.title)
            
            Picker("", selection: $rating) {
                ForEach(1..<6){index in
                    Text(String(index)).tag(index)
                }
                
            }
            .onChange(of: rating, perform: { value in
                model.updateRating(forId: book.id, rate: rating)
            })
            .pickerStyle(SegmentedPickerStyle()).padding([.leading, .trailing])
            
        }.padding(.horizontal).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .navigationBarTitle(book.title).padding()
        .onAppear{rating = book.rating}
    }
}

struct PreviewView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView(book: Book()).environmentObject(BookModel())
        .previewDevice("iPhone 12")
       
    }
}
