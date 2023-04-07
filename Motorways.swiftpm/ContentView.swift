//
//  ContentView.swift
//  Motorways
//
//  Created by Isabelle Colares on 04/04/23.
//

import Foundation
import SwiftUI

struct ContentView: View {
    
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
                        .lineLimit(2)
                        .truncationMode(.tail)
                        .foregroundColor(.white)
                        .font(.title2)
                        .padding()
                    
                } .padding()
            } .frame(width: 1100, height: 150)
            
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
            
            
            HStack (spacing: 100){
                
                
                VStack {
                    Image(systemName: "person.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 250)
                        .padding()
                    
                    Text("Sooter")
                        .font(.title)
                        .foregroundColor(.primary)
                        .padding()
                    Text("Slow")
                        .font(.headline)
                        .foregroundColor(.secondary)
                        .padding()
                }
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .onTapGesture {
                    // Ação a ser executada quando o card for clicado
                    answer.Answers[0] = "Sooter"
                }
                
                VStack {
                    Image(systemName: "person.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 250)
                        .padding()
                    
                    Text("Chopper")
                        .font(.title)
                        .foregroundColor(.primary)
                        .padding()
                    Text("Medium")
                        .font(.headline)
                        .foregroundColor(.secondary)
                        .padding()
                }
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .onTapGesture {
                    // Ação a ser executada quando o card for clicado
                    answer.Answers[0] = "Chopper"
                }
                
                VStack {
                    Image(systemName: "person.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 250)
                        .padding()
                    
                    Text("Sport")
                        .font(.title)
                        .foregroundColor(.primary)
                        .padding()
                    Text("Fast")
                        .font(.headline)
                        .foregroundColor(.secondary)
                        .padding()
                }
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 5)
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
}
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

        
        
