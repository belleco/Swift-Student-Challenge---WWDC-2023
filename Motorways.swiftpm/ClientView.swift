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
            
            
            Text("Eletric Motors")
                .font(CustomFontStyle.title1.font)
                .padding(.bottom,50)

                        
            Text("They are powered by an electric motor powered by rechargeable batteries instead of fuel. They are a cleaner and quieter alternative than gasoline powered motorcycles, producing less pollution and are more energy efficient. \n\nElectric motorcycles look and perform like conventional motorcycles, but with a different power source, enabling people to move around in a more sustainable and cost-effective way.")
                .font(CustomFontStyle.headline.font)
                .padding(.bottom,100)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("Close")
                    .bold()
                    .padding(.horizontal, 90)
                    .padding(.vertical, 25)
                    .foregroundColor(Color.white)
                    .background(Color("retroTerc"))
                    .cornerRadius(10)
            }.shadow(radius: 5)
            
        }.padding(40)
    }
}


struct SheetView_Preview : PreviewProvider {
    static var previews: some View {
        ClientView()
    }
}

    
    
