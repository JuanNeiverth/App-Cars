//
//  DataService.swift
//  My Project Car MVVM
//
//  Created by Juan on 25/05/23.
//

import Foundation


class DataService {
    
    static func getLocalData() -> [Cars] {
        
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        if let path = pathString {
            let url = URL(fileURLWithPath: path)
            
            do {
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                do {
                    let carData = try decoder.decode([Cars].self, from: data)
                    
                    for (index, _) in carData.enumerated() {
                        carData[index].id = UUID()
                    }
                    
                    return carData
                } catch {
                    print("Decoding error: \(error)")
                }
                
            } catch {
                print("Data error: \(error)")
            }
        }
        
        return [Cars]()
    }
}


