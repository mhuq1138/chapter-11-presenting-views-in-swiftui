//
//  ContentView.swift
//  Shared
//
//  Created by Mazharul Huq on 8/31/20.
//

import SwiftUI

struct ContentView: View {
    @State var showPopover = false
    var body: some View {
        VStack {
            Button("Show popover") {
                self.showPopover.toggle()
            }.popover(isPresented: $showPopover, arrowEdge: .bottom){
                PopoverView(dismissFlag: self.$showPopover)
                .frame(width: 300, height: 200)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
