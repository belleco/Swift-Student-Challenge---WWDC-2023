//
//  ClientView.swift
//  Motorways
//
//  Created by Isabelle Colares on 10/04/23.
//

import Foundation
import SwiftUI


struct ClientView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200)
                .padding()
            
            
            Text("New Client")
                .font(CustomFontStyle.title1.font)
                .padding(.bottom,50)

                        
            Text("Problem Statement")
                .font(CustomFontStyle.title3.font)
                .padding(.bottom,100)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("Close")
                    
            }.buttonStyle(CustomButtonStyle())
            .shadow(radius: 5)
            
        }.padding(40)
    }
}


struct SheetView_Preview : PreviewProvider {
    static var previews: some View {
        ClientView()
    }
}

    
    
