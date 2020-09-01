//
//  PresentedView2.swift
//  Modal Presentation Examples
//
//  Created by Mazharul Huq on 8/27/20.
//

import SwiftUI

struct PresentedView2: View {
    @Binding var presentFlag:Bool
    
    var body: some View {
        VStack{
            Text("This is Presented View")
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.orange)
            Button("Dismiss"){
                presentFlag = false
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
         .background(Color.green)
    }
}


