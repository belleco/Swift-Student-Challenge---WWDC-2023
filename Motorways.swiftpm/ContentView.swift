//
//  CharacteristicsView.swift
//  Motorways
//
//  Created by Isabelle Colares on 04/04/23.
//

import Foundation
import SwiftUI


struct ContentView: View {
    @State private var showingInfo = false
    @State private var overlayText = ""
    @StateObject var answer = Answers()
    
    
    var body: some View {
        
        
        VStack{
            ZStack{
                Rectangle()
                    .fill(Color.black) // Cor sólida
                    .cornerRadius(10)
                
                HStack{
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .foregroundColor(.white)
                        .padding()
                    
                    Text ("I don't want to run too fast, it has to be safe and take me places in the best possible way.")
                        .font (Font.custom("Urbanist-VariableFont_wght", size: 22))
                        .lineLimit(2)
                        .truncationMode(.tail)
                        .foregroundColor(.white)
                        .padding()
                    
                } .padding()
            } .frame(width: 1100, height: 130)
            
            Spacer()
            
            Text ("Which of these has the ")
                .foregroundColor(.black)
                .font(.largeTitle)
            + Text("speed").bold()
                .foregroundColor(.black)
                .font(.largeTitle)
            + Text(" the customer wants?")
                .foregroundColor(.black)
                .font(.largeTitle)
            
            HStack {
                CardMotorView(image: "photo",icon: "info.circle", title: "Scooter", subtitle: "Slow")
                    .onTapGesture {
                        // Ação a ser executada quando o card for clicado
                        answer.Answers[0] = "Sooter"
                    }
                
                
                CardMotorView(image: "photo",icon: "info.circle", title: "Chopper", subtitle: "Medium")
                    .onTapGesture {
                        // Ação a ser executada quando o card for clicado
                        answer.Answers[0] = "Chopper"
                    }
                    
                
                
                
                CardMotorView(image: "photo",icon: "info.circle", title: "Sport", subtitle: "Fast")
                    .onTapGesture {
                        // Ação a ser executada quando o card for clicado
                        answer.Answers[0] = "Sport"
                    }
                    
            }
            
            Spacer()
            
            HStack (spacing: 300){
                
                HStack {
                    Image(systemName: "person.crop.artframe")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.black)
                        .padding()
                    
                    Spacer()
                    
                    Image(systemName: "person.crop.artframe")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.black)
                        .padding()
                    
                    Spacer()
                    
                    Rectangle()
                        .stroke(style: StrokeStyle(lineWidth: 2, dash: [5]))
                        .foregroundColor(.green)
                        .scaledToFit()
                        .padding(20)
                    
                } .frame(width: 500, height: 150)
                
                Button(action: {
                    // Adicione sua ação aqui
                    print(answer.Answers[0])
                }) {
                    Text("Confirm")
                        .padding(.horizontal, 90)
                        .padding(.vertical, 25)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            
        }
    }
    
   public struct CardMotorView: View {
        let image: String
        let icon: String
        let title: String
        let subtitle: String
        @State private var overlayText = ""
        @State private var showingInfo = false
        
        
        
        var body: some View {
            VStack {
                Image(systemName: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 200)
                    .padding(.vertical)
                
                HStack{
                    
                    Text(title)
                        .font(.title)
                        .foregroundColor(.primary)
                    
                    Spacer()
                    
                    Image(systemName: icon)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                        .onTapGesture {
                            overlayText = "Information for Card 1"
                            showingInfo = true
                        }
                    
                    
                }.padding()
                
                Text(subtitle)
                    .font(.body)
                    .foregroundColor(.secondary)
                    .padding(.vertical)
                
            }
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
            .padding()
            .overlay(
                Group {
                    if showingInfo {
                        OverlayView(text: overlayText)
                            .onTapGesture {
                                showingInfo = false
                            }
                    }
                }
            )
        }
    }
}
    struct OverlayView: View {
        let text: String
        
        var body: some View {
            ZStack {
                Color.black.opacity(0.5)
                
                VStack {
                    Text(text)
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                .padding()
            }
            .ignoresSafeArea()
        }
    }



struct ContentView_Preview : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

    
    
