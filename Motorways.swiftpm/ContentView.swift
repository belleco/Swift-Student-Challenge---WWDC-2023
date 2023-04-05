//
//  ContentView.swift
//  Motorways
//
//  Created by Isabelle Colares on 04/04/23.
//

import Foundation
import SwiftUI

struct Moto {
    var name: String
    var speed: String
    var budget: String
    var imageName: String
    var isChosen: Bool = false
}

import SwiftUI

struct ContentView: View {
    
    let motorcycleOptions = ["Chopper", "Scooter", "Sport"]
    
    @State var selectedOptions: [String] = []
    @State var gameResult: String? = nil
    
    var body: some View {
        VStack {
            // Cabeçalho com características do cliente
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "person.fill")
                    Text("Cliente: Moderado, 2 pessoas, médio ou baixo")
                }
                Spacer()
            }
            .padding()
            
            // Opções de moto
            HStack {
                ForEach(motorcycleOptions, id: \.self) { option in
                    MotorcycleOptionCard(option: option, selectedOptions: $selectedOptions)
                }
            }
            
            // Botão de confirmação
            Button(action: {
                gameResult = checkAnswer(chosenAnswers: selectedOptions)
            }, label: {
                Text("Confirmar escolhas")
                    .foregroundColor(.white)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 20)
                    .background(Color.blue)
                    .cornerRadius(10)
            })
            .padding()
            
            // Mensagem de resultado
            if let result = gameResult {
                Text(result)
                    .padding()
            }
            
            Spacer()
        }
    }
}

struct MotorcycleOptionCard: View {
    
    let option: String
    @Binding var selectedOptions: [String]
    
    var body: some View {
        VStack {
            Image(systemName: "motorcycle")
            Text(option)
                .padding(.vertical, 5)
            Text("Características")
                .font(.caption)
            Spacer()
        }
        .padding(10)
        .background(selectedOptions.contains(option) ? Color.blue.opacity(0.2) : Color.white)
        .cornerRadius(10)
        .onTapGesture {
            if let index = selectedOptions.firstIndex(of: option) {
                selectedOptions.remove(at: index)
            } else {
                selectedOptions.append(option)
            }
        }
    }
}


func checkAnswer(chosenAnswers: [String]) -> String {
    var chopperCount = 0
    var scooterCount = 0
    var sportCount = 0
    
    for answer in chosenAnswers {
        switch answer {
        case "Chopper":
            chopperCount += 1
        case "Scooter":
            scooterCount += 1
        case "Sport":
            sportCount += 1
        default:
            break
        }
    }
    
    if chopperCount >= 2 {
        return "Resposta certa reflexiva - Chopper"
    } else if scooterCount >= 2 {
        return "Resposta reflexiva - Scooter"
    } else if sportCount >= 2 {
        return "Resposta errada motivacional - Sport"
    } else {
        return "Resposta errada motivacional"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
