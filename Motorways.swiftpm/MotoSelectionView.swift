//
//  MotoSelectionView.swift
//  Motorways
//
//  Created by Isabelle Colares on 04/04/23.
//

import Foundation
import SwiftUI

class Answers : ObservableObject {
    @Published var  Answers : [String] = ["", "", ""]
}


struct OverlayView: View {
    let cardInformation: String
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.95)
                .cornerRadius(10)

            
            VStack {
                Text(cardInformation)
                    .font(CustomFontStyle.bodyBold.font)
                    .foregroundColor(.white)
                    .padding(.vertical,80)
                    .padding(.horizontal,20)
                
                Spacer()
            }
            .padding()
        }
        .ignoresSafeArea()
    }
}

struct CustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        return configuration.label
            .font(CustomFontStyle.bodyBold.font)
            .padding(.horizontal,40)
            .padding(.vertical,20)
            .background(Color("retroTerc"))
            .foregroundColor(Color.white)
            .opacity(configuration.isPressed ? 0.7 : 1)
            .scaleEffect(configuration.isPressed ? 0.8 : 1)
            .cornerRadius(10)
    }
}

