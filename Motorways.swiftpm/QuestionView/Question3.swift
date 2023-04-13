//
//  Question3.swift
//  Motorways
//
//  Created by Isabelle Colares on 11/04/23.
//

import Foundation
import SwiftUI


struct Question3: View {
    @EnvironmentObject var answer: Answers
   
    var body: some View {
        VStack{
            
            ClientConversation(imageClient: "person.circle", conversation: "I don't want to run too fast, it has to be safe and take me places in the best possible way.")
            
            Spacer()
            
            CardQuestion(firstWords: "Which of these has the ", boldWord: "speed", lastwords: " the customer wants?")
            
            HStack {
                CardMotor(imageMotor: "photo",icon: "info.circle", title: "Scooter", subtitle: "Slow",  information: "It has a maximum speed of around 50 km/h and its autonomy range can vary from 50 km to 120 km, depending on the model and conditions of use.")
                    .onTapGesture {
                        // Ação a ser executada quando o card for clicado
                        answer.Answers[2] = 1
                    }
                
                CardMotor(imageMotor: "photo",icon: "info.circle", title: "Chopper", subtitle: "Medium",  information: "Information for Card 2")
                    .onTapGesture {
                        // Ação a ser executada quando o card for clicado
                        answer.Answers[2] = 2
                    }
                
                CardMotor(imageMotor: "photo",icon: "info.circle", title: "Sport", subtitle: "Fast", information: "Information for Card 3")
                    .onTapGesture {
                        // Ação a ser executada quando o card for clicado
                        answer.Answers[2] = 3
                    }
            } .padding(.horizontal,80)
            
            Spacer()
            
            HStack (spacing: 300){
                
                HStack {
                    
                    MiniCard()
                    
                    Spacer()
                    
                    MiniCard()
                    
                    Spacer()
                    
                    MiniCard()
                    
                    
                } .frame(width: 500, height: 150)
                
                Button(action: {
                    // Adicione sua ação aqui
                    print(answer.Answers[0...2])
                })
                {
                    Text("Confirm")
                }.buttonStyle(CustomButtonStyle())
                    .shadow(radius: 5)
                
            }
            
        }.background(Color.White)
    }
}


struct Question3_Preview : PreviewProvider {
    static var previews: some View {
        Question3()
    }
}

    
    

    
    