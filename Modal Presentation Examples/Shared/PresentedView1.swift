//
//  PresentedView1.swift
//  Modal Presentation Examples
//
//  Created by Mazharul Huq on 8/27/20.
//

import SwiftUI

struct PresentedView1: View {
    var body: some View {
        VStack{
            Text("This is Presented View")
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.green)
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
         .background(Color.red)
    }
}

struct PresentedView1_Previews: PreviewProvider {
    static var previews: some View {
        PresentedView1()
    }
}
