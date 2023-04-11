//
//  MenuView.swift
//  Motorways
//
//  Created by Isabelle Colares on 09/04/23.
//

import Foundation
import SwiftUI


struct MenuView: View {
    
    var body: some View {
        NavigationView{
            
            VStack{
                
                Image("Logo")
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(maxWidth: 700)
                    .padding(.top, 100)
                
                Spacer()
                
                HStack{
                    VStack{
                        
                        Text("Every electric bike has its profile, you need to help the next customer get the bike that best fits her profile")
                            .font(CustomFontStyle.title3.font)
                            .foregroundColor(Color.Black)
                            .multilineTextAlignment(.leading)
                            .padding(.vertical,50)
                            .padding(.horizontal,30)
                        
                        
                    }.background(Color.Primary.opacity(0.6))
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .padding(50)
                    
                    
                    Spacer()
                    
                    Button(action: {}){
                        NavigationLink (destination: CharacteristicsView()) {
                            Image(systemName: "play.fill")
                                .resizable()
                                .frame(width: 100.0, height: 100.0)
                                .scaledToFit()
                                .padding(50.0)
                                .foregroundColor(Color.White)
                                .background(Color.Terc)
                                .cornerRadius(800)
                        }
                    }.shadow(radius: 5)
                    
                }.padding(.horizontal,50)
                    .padding(.bottom,150)
                
            }.background(Color.White)
            
        }.navigationViewStyle(.stack)
            .navigationBarHidden(true)
    }
}

struct MenuView_Preview : PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
