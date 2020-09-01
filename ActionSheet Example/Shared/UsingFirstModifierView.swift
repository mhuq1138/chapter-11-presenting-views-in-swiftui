//
//  UsingFirstModifierView.swift
//  ActionSheet Example
//
//  Created by Mazharul Huq on 8/30/20.
//

import SwiftUI

struct UsingFirstModifierView: View {
    @State var isActionSheet = false
    @State var color:Color = .red
    var actionSheet: ActionSheet {
        ActionSheet(title: Text("Choose Color"),
            message: Text("Choose color for rectangle fill"),
            buttons: [.default(Text("red")){
                         self.color = .red
                      },
                      .default(Text("Blue")){
                         self.color = .blue
                     },
                      .default(Text("Green")){
                        self.color = .green
                     }]
            )}
    
    var body: some View {
        VStack{
            Rectangle()
               .fill(color)
               .frame(width: 300, height: 200)
                .padding(.bottom, 30)
            
            Button("Show Action Sheet") {
                    self.isActionSheet = true
                }
        }.actionSheet(isPresented: $isActionSheet, content: {
                 actionSheet
            })
    }
}

struct UsingFirstModifierView_Previews: PreviewProvider {
    static var previews: some View {
        UsingFirstModifierView()
    }
}
