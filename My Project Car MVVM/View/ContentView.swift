//
//  ContentView.swift
//  My Project Car MVVM
//
//  Created by Juan on 25/05/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = CarsModel()
    
    var body: some View {
        
        
        NavigationView {
            List(model.cars) { r in
                
                NavigationLink(
                    destination: CarsDetail(cars: r),
                    label: {
                        
                        Text(r.type)
                        
                    })
                .navigationBarTitle("My Favorite Cars")
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
