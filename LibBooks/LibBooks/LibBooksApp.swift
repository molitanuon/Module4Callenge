//
//  LibBooksApp.swift
//  LibBooks
//
//  Created by Molita Nuon on 8/20/21.
//

import SwiftUI

@main
struct LibBooksApp: App {
    var body: some Scene {
        WindowGroup {
            BookList()
                .environmentObject(BookModel())
        }
    }
}
