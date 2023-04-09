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
                    .foregroundColor(.white)
                
                Spacer()
            }
            .padding()
        }
        .ignoresSafeArea()
    }
}
