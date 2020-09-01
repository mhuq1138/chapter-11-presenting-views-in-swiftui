//
//  UsingFirstModifierView.swift
//  Modal Presentation Examples
//
//  Created by Mazharul Huq on 8/27/20.
//

import SwiftUI

struct UsingFirstModifierView: View {
    @State private var presentFlag = false
    
    var body: some View {
        VStack(spacing:15) {
            Text("Presenting View")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .background(Color.red)
            Button("Present"){
                presentFlag = true
            }.sheet(isPresented: $presentFlag,
                    onDismiss: {
                        print(presentFlag)
                    },
                    content: {
                        PresentedView1()
                    })
        }
    }
}

struct UsingFirstModifierView_Previews: PreviewProvider {
    static var previews: some View {
        UsingFirstModifierView()
    }
}
