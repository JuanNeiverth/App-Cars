//
//  CarsDetail.swift
//  My Project Car MVVM
//
//  Created by Juan on 25/05/23.
//

import SwiftUI

struct CarsDetail: View {
    
    var cars:Cars
    
    var body: some View {
        
        
        ScrollView {
            VStack(alignment: .leading) {
                
                Text(cars.type)
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 20.0)
                    
                
                Image(cars.image)
                    .resizable()
                    .scaledToFill()
                    .cornerRadius(10)
                    .padding(.bottom, 20.0)
                    
                    

                Text(cars.description)
                    .font(.headline)
            }
            .padding(.horizontal, 20.0)
        }
    }
}

struct CarsDetail_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = CarsModel()
        
        CarsDetail(cars: model.cars[0])
    }
}
