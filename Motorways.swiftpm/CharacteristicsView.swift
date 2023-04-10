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

    
    var body: some View {
        
        VStack {
            Text("Mas primeiro... Vou te apresentar o que são motos elétricas")
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
            
            Button(action: {
                // Adicione sua ação aqui
                print("Conhecer cliente")
            }) {
                Text("Conhecer cliente")
                    .bold()
                    .padding(.horizontal, 90)
                    .padding(.vertical, 25)
                    .foregroundColor(Color.white)
                    .background(Color("retroTerc"))
                    .cornerRadius(10)
            }
        }
        .padding(.vertical,100)
        .padding(.horizontal)
        .background(Color("retroWhite")).ignoresSafeArea()
        
    }
}

struct EletricMotorInfoView: View {
    var body: some View {
        VStack {
            Text("Motos elétricas")
                .font(CustomFontStyle.title1.font)
            Divider()
            Text("Elas são movidas por um motor elétrico alimentado por baterias recarregáveis em vez de combustível. Elas são uma alternativa mais limpa e silenciosa às motocicletas movidas a gasolina, produzindo menos poluição e sendo mais eficientes em termos de consumo de energia.As motos elétricas têm a mesma aparência e desempenho das motocicletas convencionais, mas com uma fonte de energia diferente, permitindo que as pessoas se desloquem de forma mais sustentável e econômica.")
                .font(CustomFontStyle.headline.font)
                .padding(20)
        }
    }
}

struct BatteryInfoView: View {
    var body: some View {
        VStack {
            Text("Bateria de Lítio")
                .font(CustomFontStyle.title1.font)
            Divider()
            Text("As nossas motos elétricas usam baterias de íon de lítio, que são mais leves e duráveis do que as baterias de chumbo-ácido tradicionais. Além disso, as baterias possuem um sistema de gerenciamento de energia inteligente que garante uma carga mais eficiente e segura.As baterias podem ser facilmente removidas para recarga e substituição")
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

    
    
