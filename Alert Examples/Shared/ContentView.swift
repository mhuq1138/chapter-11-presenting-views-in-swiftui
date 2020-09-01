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
            SingleButtonAlertView()
                .tabItem {
                    VStack {
                        Image(systemName: "1.circle")
                        Text("Single Button Alert")
                    }
                }
                
            TwoButtonAlertView()
                .tabItem {
                    VStack {
                        Image(systemName: "2.circle")
                        Text("Two Button Alert")
                    }
                }
                
        }
    }
}
struct Message: Identifiable {
    let id = UUID()
    let text: String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
