//
//  PopoverView.swift
//  Popover Example
//
//  Created by Mazharul Huq on 8/31/20.
//

import SwiftUI

struct PopoverView: View {
    @Binding var dismissFlag:Bool
    var body: some View {
        VStack{
            Image("swiftui-96x96")
                .padding(.bottom, 20)
            Text("Welcome to SwiftUI!")
                .font(.title)
                .foregroundColor(.red)
                .padding(.bottom, 20)
            Button(action: {self.dismissFlag = false}){
                Text("Dismiss Me")
            }
        }
    }
}


