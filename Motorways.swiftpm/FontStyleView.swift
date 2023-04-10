//
//  FontStyleView.swift
//  Motorways
//
//  Created by Isabelle Colares on 10/04/23.
//

import Foundation
import SwiftUI

enum CustomFontStyle {
    case largeTitle
    case title1
    case title2
    case title3
    case headline
    case body
    
    var font: Font {
        switch self {
        case .largeTitle:
            return Font.custom("Urbanist-VariableFont_wght", size: 34)
                .bold()
                .italic()
        case .title1:
            return Font.custom("Urbanist-VariableFont_wght", size: 28)
                .bold()
        case .title2:
            return Font.custom("Urbanist-VariableFont_wght", size: 22)
        case .title3:
            return Font.custom("Urbanist-VariableFont_wght", size: 20)
        case .headline:
            return Font.custom("Urbanist-VariableFont_wght", size: 17)
                .italic()
        case .body:
            return Font.custom("Urbanist-VariableFont_wght", size: 16)
        }
    }
}
