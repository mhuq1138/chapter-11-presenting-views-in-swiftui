//
//  ContentView.swift
//  Shared
//
//  Created by Mazharul Huq on 8/29/20.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented = false
    
    var body: some View {
        ZStack{
            VStack {
                Text("Presenting View")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.green)
                    .padding(.bottom, 30)
                Button("Present"){
                    isPresented = true
                }
             }
        }.modal(isPresented: $isPresented, modalBody:{ PresentedView(isPresented: $isPresented)})
    }
}

extension View {
    func modal<ModalBody: View>(
            isPresented: Binding<Bool>,
            @ViewBuilder modalBody: () -> ModalBody
    ) -> some View {
        ModalView(
            isPresented: isPresented,parent:self,
            content: modalBody
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
