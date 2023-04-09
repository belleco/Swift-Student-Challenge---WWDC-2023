//
//  MenuView.swift
//  Motorways
//
//  Created by Isabelle Colares on 09/04/23.
//

import Foundation
import SwiftUI


struct MenuView: View {
    
    var body: some View {
        
        HStack{
            
            Image("motorcycle")
                .resizable()
                .scaledToFit()
            
            Spacer()
            
            Button(action: {
                // Adicione sua ação aqui
                print("Play")
            }) {
                Text("Play Button")
                    .bold()
                    .padding(.horizontal, 90)
                    .padding(.vertical, 25)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }.padding()
            
            
            
        }
    }
}


struct MenuView_Preview : PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

    
    
