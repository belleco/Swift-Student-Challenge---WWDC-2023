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
                Image(systemName: imageMotor)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 200)
                    .padding(.vertical)

                HStack{

                    Text(title)
                        .font(CustomFontStyle.title3.font)
                        .foregroundColor(Color.Terc)
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
    
    public var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.Terc.opacity(0.75)) // Cor sólida
                .cornerRadius(10)
            
            HStack{
                Image(systemName: imageClient)
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.white)
                    .padding()
                
                Text (conversation)
                    .font(CustomFontStyle.headlineBold.font)
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
    @State var imageMotor = "person.crop.artframe" // nome da imagem padrão
    public var body: some View {
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


    
    
