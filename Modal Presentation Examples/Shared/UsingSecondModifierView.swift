//
//  UsingSecondModifierView.swift
//  Modal Presentation Examples
//
//  Created by Mazharul Huq on 8/27/20.
//

import SwiftUI

struct UsingSecondModifierView: View {
    @State private var personInfo:PersonInfo? = nil
    
    var body: some View {
        VStack(spacing:15) {
            Text("Presenting View")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .background(Color.red)
            Button("Present"){
                personInfo = PersonInfo(name: "Henry Botham", address: "Elm Street")
            }.sheet(item: $personInfo){item in
                VStack{
                    Text("This is Presented View")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .padding(.bottom, 40)
                    Text(item.name)
                        .font(.title2)
                    Text(item.address)
                        .font(.title3)
                }.frame(maxWidth: .infinity, maxHeight: .infinity)
                 .background(Color.orange)
            }
        }
    }
}

struct UsingSecondModifierView_Previews: PreviewProvider {
    static var previews: some View {
        UsingSecondModifierView()
    }
}
