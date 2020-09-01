//
//  ModalView.swift
//  Custom Modal Presentation
//
//  Created by Mazharul Huq on 8/29/20.
//

import SwiftUI

struct ModalView<Parent:View,Content: View>: View {
    @Binding var isPresented:Bool
    var parent: Parent
    var content: Content
    
    init(isPresented: Binding<Bool>, parent: Parent, @ViewBuilder content: () -> Content) {
        self._isPresented = isPresented
        self.parent = parent
        self.content = content()
    }
    
    var body: some View {
        ZStack{
            parent
            
            if isPresented{
                Rectangle()
                    .edgesIgnoringSafeArea(.all)
                    .foregroundColor(.black)
                    .opacity(0.3)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .onTapGesture {
                         $isPresented.wrappedValue = false
                     }
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(.white)
                        .overlay(RoundedRectangle(cornerRadius: 25.0)
                        .stroke(Color.gray.opacity(0.2), lineWidth: 1))
                        .shadow(color: Color.gray.opacity(0.4), radius: 4 )
                     content
                }.padding(EdgeInsets(top: 100, leading: 20, bottom: 100, trailing: 20))
            }
        }.animation(.easeInOut(duration: 1.5))
    }
}

