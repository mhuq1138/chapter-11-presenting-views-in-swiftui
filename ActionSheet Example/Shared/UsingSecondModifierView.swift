//
//  UsingSecondModifierView.swift
//  ActionSheet Example
//
//  Created by Mazharul Huq on 8/30/20.
//

import SwiftUI

struct UsingSecondModifierView: View {
    @State private var colorSetter:ColorSetter? = nil
    @State private var color:Color = .red
    
    var body: some View {
        VStack{
            Rectangle()
                .fill(color)
                .frame(width: 300, height: 200)
                .padding(.bottom, 30)
            
            Button("Show Action Sheet") {
                colorSetter = ColorSetter(color1: "Red Color", color2: "Blue Color", color3: "Green Color")
                }
        }.actionSheet(item: $colorSetter){ item in
            ActionSheet(title: Text("Color Setter"), message: Text("Choose a Color"), buttons:
                            [.default(Text(item.color1)){
                                color = .red
                             },
                            .default(Text(item.color2)){
                                color = .blue
                            },
                            .default(Text(item.color3)){
                                color = .green
                            }])
        }
    }
}

struct ColorSetter:Identifiable{
    var id = UUID()
    var color1:String
    var color2:String
    var color3:String
}

struct UsingSecondModifierView_Previews: PreviewProvider {
    static var previews: some View {
        UsingSecondModifierView()
    }
}
