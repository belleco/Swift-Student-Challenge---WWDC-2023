//
//  ResultView.swift
//  Motorways
//
//  Created by Isabelle Colares on 04/04/23.
//

import Foundation
import SwiftUI

struct ResultView: View {
    
    @StateObject var answer = Answers()
    
    var body: some View {
        
        HStack{
                        
            MotorInfoResult(imageMotor: "motorcycle", motorName: "Chopper", descriptionMotor1: "“Each motorcycle has its singularities, pros and cons according to what you want at that moment as well as life's decisions, you need to know yourself enough to follow what fits best with your values... your profile, your self”", descriptionMotor2: "After a moment of decisions, this is the motorcycle that best suits the customer, now let's finalize the sale.", buttonstatement: "Sell the motorcicycle")
            
            
        }.background(Color("retroWhite"))
    }
    
    
    struct MotorInfoResult: View {
        let imageMotor: String
        let motorName: String
        let descriptionMotor1: String
        let descriptionMotor2: String
        let buttonstatement: String
        
        
        var body: some View {
            
            HStack{
                
                Image(imageMotor)
                    .resizable()
                    .scaledToFit()
                
                Spacer()
                
                VStack{
                    
                    Text(motorName)
                        .font(CustomFontStyle.largeTitle.font)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .lineLimit(1)
                        .padding(.vertical,30)
                    
                    Text(descriptionMotor1)
                        .font(CustomFontStyle.body.font)
                        .fontWeight(.regular)
                        .foregroundColor(.primary)
                        .multilineTextAlignment(.leading)
                        .padding(.vertical,30)
                    
                    Text(descriptionMotor2)
                        .font(CustomFontStyle.body.font)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .multilineTextAlignment(.leading)
                
                    Spacer()

                    Button(action: {
                        // Adicione sua ação aqui
                        print("apertou o botão")
                    }) {
                        Text(buttonstatement)
                            .bold()
                            .padding(.horizontal, 90)
                           .padding(.vertical, 25)
                            .foregroundColor(.white)
                            .background(Color("retroTerc"))
                            .cornerRadius(10)
                    }
                    
                }
                
            }.padding(.vertical,50)
                .padding(.horizontal,40)
        }
    }
}
    
    struct ResultView_Preview : PreviewProvider {
        static var previews: some View {
            ResultView()
        }
    }
