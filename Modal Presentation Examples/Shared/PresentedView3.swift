//
//  PresentedView3.swift
//  Modal Presentation Examples
//
//  Created by Mazharul Huq on 8/27/20.
//

import SwiftUI

struct PresentedView3: View {
    @Environment(\.presentationMode) var presentationMode
    let person:PersonInfo
    
    var body: some View {
        VStack{
            Text("This is Presented View")
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.orange)
            Text(person.name)
                .font(.title2)
            Text(person.address)
                .font(.title3)
            Button("Dismiss"){
                presentationMode.wrappedValue.dismiss()
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
         .background(Color.green)
    }
}


