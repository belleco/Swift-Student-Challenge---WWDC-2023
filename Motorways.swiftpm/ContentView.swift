//
//  CharacteristicsView.swift
//  Motorways
//
//  Created by Isabelle Colares on 04/04/23.
//

import Foundation
import SwiftUI

    
    public struct CardMotor: View {
        let imageMotor: String
        let icon: String
        let title: String
        let subtitle: String
        let information: String
        @State  var overlayText = ""
        @State  var showingInfo = false


        public var body: some View {
            VStack {
                Image(imageMotor)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300)

                HStack{

                    Text(title)
                        .font(CustomFontStyle.title3.font)
                        .foregroundColor(Color.Black)
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

                }.padding(10)

                Text(subtitle)
                    .font(CustomFontStyle.headline.font)
                    .bold()
                    .foregroundColor(.secondary)

            }
            .padding(20)
            .background(Color.white)
            .cornerRadius(5)
            .shadow(radius: 3)
            .padding(10)
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
    
    public var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.Primary) // Cor sólida
                .cornerRadius(10)
            
            HStack{
                Image(systemName: imageClient)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundColor(.white)
                    .padding()
                
                Text (conversation)
                    .font(CustomFontStyle.headline.font)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
//                    .truncationMode(.tail)
                    .foregroundColor(Color.Black)
                    .padding()
                
            } .padding()
        } .frame(width: 1100, height: 50)
    }
}
    
public struct CardQuestion: View {
    let firstWords: String
    let boldWord: String
    let lastwords: String
    
    
    public var body: some View {
        
        Text (firstWords)
            .foregroundColor(.black)
            .font(CustomFontStyle.title2.font)
        + Text(boldWord).bold()
            .foregroundColor(.black)
            .font(CustomFontStyle.title2Bold.font)
        + Text(lastwords)
            .foregroundColor(.black)
            .font(CustomFontStyle.title2.font)
    }
}

    
public struct MiniCard: View {
    @State var MiniScooter = "Scooter"
    @State var MiniChopper = "Chopper"
    @State var MiniSport = "Sport"

    
    
    // nome da imagem padrão
    public var body: some View {
        VStack {
            Image(MiniScooter) // exibe a imagem com o nome atual
                .resizable()
                .scaledToFit()
                .padding()
                .onTapGesture { // ação a ser realizada quando a imagem for clicada
                    if MiniScooter == "Scooter" {
                        MiniScooter = "Chopper" // muda o nome da imagem para a segunda imagem
                    } else {
                        MiniScooter = "Scooter" // muda o nome da imagem para a primeira imagem
                    }
                }
        }
    }
}


    
    
