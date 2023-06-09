//
//  ResultView.swift
//  Motorways
//
//  Created by Isabelle Colares on 04/04/23.
//

import Foundation
import SwiftUI

struct ResultView: View {
    
    @EnvironmentObject var answer : Answers
    @Environment(\.dismiss) var dismiss

    
    var information: ListResultView = showResultView[0]
    
    var mostCommonAnswer: Int? {
        let counts = answer.Answers.reduce(into: [:]) { counts, answer in
            counts[answer, default: 0] += 1
        }
        
        let maxCount = counts.values.max()
        
        if maxCount == 1 {
            return 3
        }
        
        let mostCommon = counts.filter{$0.value ==  maxCount}.map {$0.key}
        return mostCommon[0]
    }
    
    var body: some View {
        
        HStack{
            
            // Scooter
            if mostCommonAnswer == 1 {
                MotorInfoResult(imageMotor: showResultView[0].imageMotor, motorName: showResultView[0].motorName, descriptionMotor1:showResultView[0].descriptionMotor1, descriptionMotor2: showResultView[0].descriptionMotor2, buttonstatement: showResultView[0].buttonstatement)
                
                // Chopper
            }else if mostCommonAnswer == 2 {
                MotorInfoResult(imageMotor: showResultView[1].imageMotor, motorName: showResultView[1].motorName, descriptionMotor1:showResultView[1].descriptionMotor1, descriptionMotor2: showResultView[1].descriptionMotor2, buttonstatement: showResultView[1].buttonstatement)
                
                // Sport and others
            }else {
                MotorInfoResult(imageMotor: showResultView[2].imageMotor, motorName: showResultView[2].motorName, descriptionMotor1:showResultView[2].descriptionMotor1, descriptionMotor2: showResultView[2].descriptionMotor2, buttonstatement: showResultView[2].buttonstatement)
            }
            
            //ESSE DÁ DISMISS
            Button(action: {
                dismiss()
                
                
            }) {
                Text("ESSE DÁ BACK")
                
            }.buttonStyle(CustomButtonStyle())
                .shadow(radius: 5)
            
            
            
        }.background(Color.White)
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
                    
                    NavigationLink(destination: FinalView(), label: {
                        Text(buttonstatement)
                    }).buttonStyle(CustomButtonStyle())
                    
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
