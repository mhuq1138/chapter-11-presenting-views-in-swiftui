//
//  DismissingPresentedView.swift
//  Modal Presentation Examples
//
//  Created by Mazharul Huq on 8/27/20.
//

import SwiftUI

struct DismissingPresentedView: View {
    @State private var presentFlag = false
    @State private var personInfo:PersonInfo? = nil
    
    var body: some View {
        VStack(spacing:15) {
            Text("Presenting View")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
            Button("Present 1"){
                presentFlag = true
            }.sheet(isPresented: $presentFlag){
                    PresentedView2(presentFlag: $presentFlag)
               }
            Button("Present 2"){
                personInfo = PersonInfo(name: "Henry Botham", address: "Elm Street")
            }.sheet(item: $personInfo){item in
                PresentedView3(person: item)
             }
                
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
                 .background(Color.orange)
    }
}

struct DismissingPresentedView_Previews: PreviewProvider {
    static var previews: some View {
        DismissingPresentedView()
    }
}
