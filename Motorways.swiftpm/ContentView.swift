//
//  CharacteristicsView.swift
//  Motorways
//
//  Created by Isabelle Colares on 04/04/23.
//

import Foundation
import SwiftUI


struct ContentView: View {
    
    @StateObject var answer = Answers()
    @State var showClient = false

    
    var body: some View {            
        VStack{
            
            ClientConversation(imageClient: "person.circle", conversation: "I don't want to run too fast, it has to be safe and take me places in the best possible way.")
            
            Spacer()
            
            CardQuestion(firstWords: "Which of these has the ", boldWord: "speed", lastwords: " the customer wants?")
            
            HStack {
                CardMotorView(imageMotor: "photo",icon: "info.circle", title: "Scooter", subtitle: "Slow",  information: "It has a maximum speed of around 50 km/h and its autonomy range can vary from 50 km to 120 km, depending on the model and conditions of use.")
                    .onTapGesture {
                        // Ação a ser executada quando o card for clicado
                        answer.Answers[0] = "Sooter"
                    }
                
                CardMotorView(imageMotor: "photo",icon: "info.circle", title: "Chopper", subtitle: "Medium",  information: "Information for Card 2")
                    .onTapGesture {
                        // Ação a ser executada quando o card for clicado
                        answer.Answers[0] = "Chopper"
                    }
                
                CardMotorView(imageMotor: "photo",icon: "info.circle", title: "Sport", subtitle: "Fast", information: "Information for Card 3")
                    .onTapGesture {
                        // Ação a ser executada quando o card for clicado
                        answer.Answers[0] = "Sport"
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
                }) {
                    Text("Confirm")
                        .bold()
                        .padding(.horizontal, 90)
                        .padding(.vertical, 25)
                        .foregroundColor(Color.white)
                        .background(Color("retroTerc"))
                        .cornerRadius(10)
                    
                }
            }
            
        }.background(Color("retroWhite"))
        .sheet(isPresented: $showClient) {
            ClientView()
        }
        .onAppear {
            showClient = true
              
        }
    }
    
    public struct CardMotorView: View {
        let imageMotor: String
        let icon: String
        let title: String
        let subtitle: String
        let information: String
        @State  var overlayText = ""
        @State  var showingInfo = false
        
        
        var body: some View {
            VStack {
                Image(systemName: imageMotor)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 200)
                    .padding(.vertical)
                
                HStack{
                    
                    Text(title)
                        .font(CustomFontStyle.title3.font)
                        .foregroundColor(Color("retroTerc"))
                        .bold()
                    
                    Spacer()
                    
                    Image(systemName: icon)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                        .onTapGesture {
                            overlayText = information
                            showingInfo = true
                        }
                    
                }.padding()
                
                Text(subtitle)
                    .font(CustomFontStyle.headline.font)
                    .bold()
                    .foregroundColor(.secondary)
                    .padding(.vertical,15)
                
            }
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
            .padding()
            .overlay(
                Group {
                    if showingInfo {
                        OverlayView(cardInformation: overlayText)
                            .onTapGesture {
                                showingInfo = false
                            }
                    }
                }
            )
        }
    }
    
    public struct ClientConversation: View {
        let imageClient: String
        let conversation: String
        
        var body: some View {
            ZStack{
                Rectangle()
                    .fill(Color("retroTerc").opacity(0.75)) // Cor sólida
                    .cornerRadius(10)
                
                HStack{
                    Image(systemName: imageClient)
                        .resizable()
                        .frame(width: 80, height: 80)
                        .foregroundColor(.white)
                        .padding()
                    
                    Text (conversation)
                        .font(CustomFontStyle.headline.font)
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                        .truncationMode(.tail)
                        .foregroundColor(.white)
                        .padding()
                    
                } .padding()
            } .frame(width: 1100, height: 130)
        }
    }
    
    public struct CardQuestion: View {
        let firstWords: String
        let boldWord: String
        let lastwords: String
        
        
        var body: some View {
            
            Text (firstWords)
                .foregroundColor(.black)
                .font(CustomFontStyle.largeTitle.font)
            + Text(boldWord).bold()
                .foregroundColor(.black)
                .font(CustomFontStyle.largeTitle.font)
            + Text(lastwords)
                .foregroundColor(.black)
                .font(CustomFontStyle.largeTitle.font)

            
        }
    }
    
    public struct MiniCard: View {
        @State var imageMotor = "person.crop.artframe" // nome da imagem padrão
        var body: some View {
            VStack {
                Image(systemName: imageMotor) // exibe a imagem com o nome atual
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .onTapGesture { // ação a ser realizada quando a imagem for clicada
                        if imageMotor == "person.crop.artframe" {
                            imageMotor = "iphone.smartbatterycase.gen2" // muda o nome da imagem para a segunda imagem
                        } else {
                            imageMotor = "person.crop.artframe" // muda o nome da imagem para a primeira imagem
                        }
                    }
            }
        }
    }
}
   



struct ContentView_Preview : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

    
    
