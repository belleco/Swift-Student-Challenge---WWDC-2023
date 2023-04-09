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
                    .font(.custom("Urbanist-VariableFont_wght", size: 24))
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
