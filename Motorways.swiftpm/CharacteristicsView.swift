//
//  CharacteristicsView.swift
//  Motorways
//
//  Created by Isabelle Colares on 04/04/23.
//

import Foundation
import SwiftUI


struct CharacteristicsView: View {
    @State private var showPopover = false
    
    var body: some View {
        VStack {
            Button("Bateria imagem") {
                showPopover.toggle()
            }
        }
        .popover(isPresented: $showPopover, content: {
            CustomView()
                .frame(width: 400, height: 400) // Definindo o tamanho da View
        })
    }
}

struct CustomView: View {
    var body: some View {
        VStack {
            Text("Bateria de Lítio")
                .font(.custom("", size: 30))
            Divider()
            Text("As nossas motos elétricas usam baterias de íon de lítio, que são mais leves e duráveis do que as baterias de chumbo-ácido tradicionais. Além disso, as baterias possuem um sistema de gerenciamento de energia inteligente que garante uma carga mais eficiente e segura.As baterias podem ser facilmente removidas para recarga e substituição")
                .padding(20)
        }
    }
}


struct CharacteristicsView_Preview : PreviewProvider {
    static var previews: some View {
        CharacteristicsView()
    }
}

    
    
