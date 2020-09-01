//
//  ContentView.swift
//  Shared
//
//  Created by Mazharul Huq on 8/30/20.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView{
            UsingFirstModifierView()
                .tabItem {
                    VStack {
                        Image(systemName: "1.circle")
                        Text("Using First Modifier")
                    }
                }
                
            UsingSecondModifierView()
                .tabItem {
                    VStack {
                        Image(systemName: "2.circle")
                        Text("Using Second Modifier")
                    }
                }
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
