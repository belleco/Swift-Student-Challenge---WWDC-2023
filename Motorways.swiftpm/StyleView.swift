//
//  FontStyleView.swift
//  Motorways
//
//  Created by Isabelle Colares on 10/04/23.
//

import Foundation
import SwiftUI

// font style


enum CustomFontStyle {
    case largeTitle
    case title1
    case title2
    case title2Bold
    case title3
    case title3Bold
    case headline
    case headlineBold
    case body
    case bodyBold

    
    var font: Font {
        switch self {
            
        case .largeTitle:
            return Font.getFontBold(size: 40)

        case .title1:
            return Font.getFontBold(size: 34)

        case .title2:
            return Font.getFontRegular(size: 32)
            
        case .title2Bold:
            return Font.getFontBold(size: 32)
            
        case .title3:
            return Font.getFontRegular(size: 28)
            
        case .title3Bold:
            return Font.getFontBold(size: 28)
            
        case .headline:
            return Font.getFontRegular (size: 20)
            
        case .headlineBold:
            return Font.getFontBold (size: 20)

        case .body:
            return Font.getFontRegular(size: 17)
            
        case .bodyBold:
            return Font.getFontBold(size: 17)
        }
    }
}

extension Font {
    
    static func getFontRegular (size: CGFloat) -> Font {
        let cfURL = Bundle.main.url(forResource: "Urbanist-Regular", withExtension: "ttf")! as CFURL
        CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)
        let font = Font.custom("Urbanist-Regular", size: size)
        
        return font
    }
   static func getFontBold (size: CGFloat) -> Font {
        let cfURL = Bundle.main.url(forResource: "Urbanist-Bold", withExtension: "ttf")! as CFURL
        CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)
        let font = Font.custom("Urbanist-Bold", size: size)
        
        return font
    }
}

// color pallete
extension Color {
    
    static let Primary = Color("retroPrimary")
    static let Secondary = Color("retroSecondary")
    static let Terc = Color("retroTerc")
    static let Black = Color("retroBlack")
    static let White = Color("retroWhite")
    
}
    
    
    
    

// custom button style
struct CustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        return configuration.label
            .font(CustomFontStyle.bodyBold.font)
            .padding(.horizontal,40)
            .padding(.vertical,20)
            .background(Color.Terc)
            .foregroundColor(Color.white)
            .cornerRadius(10)
            .opacity(configuration.isPressed ? 0.7 : 1)
            .scaleEffect(configuration.isPressed ? 0.8 : 1)
    }
}

