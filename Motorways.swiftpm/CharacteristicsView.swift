//
//  CharacteristicsView.swift
//  Motorways
//
//  Created by Isabelle Colares on 04/04/23.
//

import Foundation
import SwiftUI


struct CharacteristicsView: View {
    @State private var showPopoverMotor = false
    @State private var showPopoverBattery = false
    @State private var isPresentingSheet = false
    
    
    var body: some View {
        
        VStack {
            Text("But first... I'll introduce electric motorcycles to you")
                .font(CustomFontStyle.largeTitle.font)
            
            Spacer()
            
            HStack{
                
                
                Button(action: {
                    // Adicione sua ação aqui
                    showPopoverMotor.toggle()
                }) {
                    Image("motorcycle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300)
                }
                
                Spacer()
                
                
                Button(action: {
                    // Adicione sua ação aqui
                    showPopoverBattery.toggle()
                }) {
                    Image("motorcycle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300)
                }
                
            }  .popover(isPresented: $showPopoverMotor, attachmentAnchor: .rect(.rect(.init(x: 50, y: 50, width: 0, height: 0))), arrowEdge: .bottom, content: {
                EletricMotorInfoView()
                    .frame(width: 400, height: 400) // Definindo o tamanho da View
            })
            
            .popover(isPresented: $showPopoverBattery, content: {
                BatteryInfoView()
                    .frame(width: 400, height: 400) // Definindo o tamanho da View
            })
            
            .padding(.horizontal,150)
            
            Spacer()
            
            
            Button(action: {}){
                NavigationLink (destination: ContentView()){
                    Text("Meet next client")
                        .bold()
                        .padding(.horizontal, 90)
                        .padding(.vertical, 25)
                        .foregroundColor(Color.white)
                        .background(Color("retroTerc"))
                        .cornerRadius(10)
                }
            }.shadow(radius: 5)
            
        }.padding(.vertical,100)
            .padding(.horizontal)
            .background(Color("retroWhite")).ignoresSafeArea()
    }
}


struct EletricMotorInfoView: View {
    var body: some View {
        VStack {
            Text("Eletric Motors")
                .font(CustomFontStyle.title1.font)
            Divider()
            Text("They are powered by an electric motor powered by rechargeable batteries instead of fuel. They are a cleaner and quieter alternative than gasoline powered motorcycles, producing less pollution and are more energy efficient. \n\nElectric motorcycles look and perform like conventional motorcycles, but with a different power source, enabling people to move around in a more sustainable and cost-effective way.")
                .font(CustomFontStyle.headline.font)
                .padding(20)
        }
    }
}

struct BatteryInfoView: View {
    var body: some View {
        VStack {
            Text("Lithium battery")
                .font(CustomFontStyle.title1.font)
            Divider()
            Text("Our electric motorcycles use lithium-ion batteries, which are lighter and more durable than traditional lead-acid batteries.\n\nIn addition, the batteries have an intelligent energy management system that guarantees a more efficient and safer charge. \n\nBatteries can be easily removed for recharge and replacement.")
                .font(CustomFontStyle.headline.font)
                .padding(20)
        }
    }
}

struct CharacteristicsView_Preview : PreviewProvider {
    static var previews: some View {
        CharacteristicsView()
    }
}

    
    
