//
//  ContentView.swift
//  Shared
//
//  Created by Mazharul Huq on 8/27/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            UsingFirstModifierView()
                .tabItem {
                    VStack {
                        Image(systemName: "1.circle")
                        Text("First Modifier")
                    }
                }
                
            FullScreenCoverView()
                .tabItem {
                    VStack {
                        Image(systemName: "2.circle")
                        Text("Full Screen Cover")
                    }
                }
                
            UsingSecondModifierView()
            .tabItem {
                VStack {
                    Image(systemName: "3.circle")
                    Text("Second Modifier")
                }
            }
            
            DismissingPresentedView()
            .tabItem {
                VStack {
                    Image(systemName: "4.circle")
                    Text("Dismissing Presented View")
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
