//
//  DataService.swift
//  LibBooks
//
//  Created by Molita Nuon on 8/20/21.
//

import Foundation

class DataService{
    
    //Get the path to the json file within the app bundle
    static func getLocalData() -> [Book]{
        
       //Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "Data", ofType: ".json")
        
        //Check if the pathString contain nil
        guard pathString != nil else {
            return [Book]()
        }
        
        //Create url object
        let url = URL(fileURLWithPath: pathString!)
        
        do{
            
            //Create a data object with the data at the url
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            do{
                
                let bookData = try decoder.decode([Book].self, from: data)
                return bookData
                
            }catch{
                print(error)
            }
            
        }catch{
            print(error)
        }
        return [Book]()
    }
}
