//
//  SingleButtonAlertView.swift
//  Alert Examples
//
//  Created by Mazharul Huq on 8/30/20.
//

import SwiftUI

struct SingleButtonAlertView: View {
    @State private var showAlert1 = false
    @State private var showAlert2 = false
    @State private var message:Message? = nil
    
    var body: some View {
        VStack(spacing:20) {
            Text("Single Button Alerts")
                .font(.title)
            Button("No message default button"){
                showAlert1 = true
            }.alert(isPresented: $showAlert1){
                Alert(title: Text("Warning!!"))
             }
            Button("Custom message dismiss button"){
                showAlert2 = true
            }.alert(isPresented: $showAlert2){
                Alert(title: Text("Weather Alert"), message: Text("It's going to rain"), dismissButton: .destructive(Text("Dismiss")))
             }
            Button("Using Second Method"){
                message = Message(text:"Tornado heading your way")
            }.alert(item: $message){message in
                Alert(title: Text("Weather Watch!"), message: Text(message.text), dismissButton: .cancel())
            }
        }
    }
}

struct SingleButtonAlertView_Previews: PreviewProvider {
    static var previews: some View {
        SingleButtonAlertView()
    }
}
