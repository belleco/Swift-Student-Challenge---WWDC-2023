//
//  MotoSelectionView.swift
//  Motorways
//
//  Created by Isabelle Colares on 04/04/23.
//

import Foundation
import SwiftUI

class Answers : ObservableObject {
    @Published var  Answers : [Int] = [0,0,0]
    //1 - Scooter, 2 - Chopper, 3 - Sport
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
