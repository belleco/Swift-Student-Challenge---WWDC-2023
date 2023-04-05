//
//  MotoSelectionView.swift
//  Motorways
//
//  Created by Isabelle Colares on 04/04/23.
//

import Foundation
import SwiftUI
//
//
//struct MotoSelectionView: View {
//    
//    @Binding var chosenMotos: [Moto]
//    var motos: [Moto]
//    @State var selectedMoto: Moto? = nil
//    
//    
//    var motos: [Moto] = [
//        Moto(name: "Chopper", speed: "Lenta", budget: "Baixo", imageName: "chopper"),
//        Moto(name: "Sport", speed: "Moderada", budget: "Médio", imageName: "sport"),
//        Moto(name: "Scooter", speed: "Veloz", budget: "Alto", imageName: "scooter")
//        ]
//    
//        @Binding var chosenMotos: [Moto]
//        @State private var isSelectionValid = false
//        
//        var body: some View {
//            List(motos, id: \.nome) { moto in
//                HStack {
//                    Image(moto.imagem)
//                        .resizable()
//                        .frame(width: 60, height: 60)
//                    VStack(alignment: .leading) {
//                        Text(moto.nome)
//                            .font(.headline)
//                        Text("Velocidade: \(moto.velocidade)")
//                            .font(.subheadline)
//                        Text("Orçamento: \(moto.orcamento)")
//                            .font(.subheadline)
//                    }
//                    Spacer()
//                    if chosenMotos.contains(moto) {
//                        Image(systemName: "checkmark")
//                            .foregroundColor(.green)
//                    }
//                    Button(action: {
//                        if chosenMotos.contains(moto) {
//                            chosenMotos.removeAll(where: {$0 == moto})
//                        } else {
//                            chosenMotos.append(moto)
//                        }
//                        isSelectionValid = !chosenMotos.isEmpty
//                    }) {
//                        if chosenMotos.contains(moto) {
//                            Text("Selected")
//                        } else {
//                            Text("Select")
//                        }
//                    }
//                }
//            }
//            .navigationBarTitle(Text("Choose your Moto"))
//            .disabled(!isSelectionValid)
//            .onAppear {
//                isSelectionValid = !chosenMotos.isEmpty
//            }
//            NavigationLink(destination: ChallengeSelectionView(chosenMotos: $chosenMotos)) {
//                Text("Next")
//            }
//            .disabled(!isSelectionValid)
//        }
//    }
//
//    
//    
//    
//    
////    @Binding var chosenMotos: [Moto]
////    let motos: [Moto] = [
////        Moto(name: "Chopper", speed: "Lenta", budget: "Baixo", imageName: "chopper"),
////        Moto(name: "Sport", speed: "Moderada", budget: "Médio", imageName: "sport"),
////        Moto(name: "Scooter", speed: "Veloz", budget: "Alto", imageName: "scooter")
////    ]
////    @State private var selectedMotos = Set<Moto>()
////
////    var body: some View {
////        List {
////            ForEach(motos) { moto in
////                HStack {
////                    Image(moto.imageName)
////                        .resizable()
////                        .frame(width: 50, height: 50)
////                    Text(moto.name)
////                    Spacer()
////                    Text(moto.speed)
////                    Spacer()
////                    Text(moto.budget)
////                    Spacer()
////                    Image(systemName: selectedMotos.contains(moto) ? "checkmark.circle.fill" : "circle")
////                        .foregroundColor(selectedMotos.contains(moto) ? .green : .gray)
////                        .onTapGesture {
////                            if selectedMotos.contains(moto) {
////                                selectedMotos.remove(moto)
////                            } else {
////                                selectedMotos.insert(moto)
////                            }
////                            chosenMotos = Array(selectedMotos)
////                        }
////                }
////            }
////        }
////        .navigationBarTitle("Escolha uma Moto")
////        .disabled(selectedMotos.isEmpty)
////        NavigationLink(destination: ResultView(chosenMotos: $chosenMotos)) {
////            Text("Next")
////        }
////        .navigationBarBackButtonHidden(true)
////    }
////}
////
////struct MotoSelectionView_Previews: PreviewProvider {
////    static var previews: some View {
////        MotoSelectionView(chosenMotos: .constant([]))
////    }
////}
