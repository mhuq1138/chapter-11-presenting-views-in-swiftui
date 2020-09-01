//
//  PresentedView.swift
//  Custom Modal Presentation
//
//  Created by Mazharul Huq on 8/29/20.
//

import SwiftUI

struct PresentedView: View {
    @Binding var isPresented: Bool
    var body: some View {
        VStack {
            Spacer()
            Text("Presented View")
                .font(.largeTitle)
                .padding()
                .background(Color.orange)
                .foregroundColor(.white)
                .padding(.bottom, 50)
            Button("Dismiss"){
                isPresented = false
            }
            Spacer()
        }
    }
}


