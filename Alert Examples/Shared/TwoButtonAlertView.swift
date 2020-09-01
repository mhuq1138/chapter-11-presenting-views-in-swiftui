//
//  TwoButtonAlertView.swift
//  Alert Examples
//
//  Created by Mazharul Huq on 8/30/20.
//

import SwiftUI

struct TwoButtonAlertView: View {
    @State var message:Message? = nil
    var body: some View {
        VStack(spacing: 15) {
            Text("Two Button Alerts")
                .font(.title)
            Button(action: {self.message = Message(text: "50% chance of rain")}){
                       Text("Show Alert")
                           .font(.title)
             }.alert(item: $message){message in
                Alert(title: Text("Weather Watch!"), message: Text(message.text), primaryButton: .cancel(Text("OK")), secondaryButton: .destructive(Text("Dismiss")))
         }
        }
    }
}

struct TwoButtonAlertView_Previews: PreviewProvider {
    static var previews: some View {
        TwoButtonAlertView()
    }
}
