//
//  CarsModel.swift
//  My Project Car MVVM
//
//  Created by Juan on 25/05/23.
//

import Foundation

class CarsModel: ObservableObject {
    
    @Published var cars = [Cars]()
    
    init () {
        
        self.cars = DataService.getLocalData()
        
    }
    
    
}
