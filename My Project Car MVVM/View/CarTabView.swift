//
//  CarTabView.swift
//  My Project Car MVVM
//
//  Created by Juan on 30/05/23.
//

import SwiftUI

struct CarTabView: View {
    var body: some View {
        TabView {
            Text("Featured View ")
                .tabItem {
                    VStack {
                        Image(systemName:  "star.fill")
                        Text("Featured")
                    }
                }
            
            ContentView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }

        }
    }
}

struct CarTabView_Previews: PreviewProvider {
    static var previews: some View {
        CarTabView()
    }
}
