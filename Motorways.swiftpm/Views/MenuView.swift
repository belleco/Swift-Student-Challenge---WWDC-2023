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
//        NavigationView{
            
            VStack{
                
                Image("Logo")
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(maxWidth: 700)
                    .padding(.top, 100)
                
                Spacer()
                
                HStack{
                    VStack{
                        
                        Text("Every electric motorcycle has its profile, you need to help the next customer get the motorcycle that best fits her profile")
                            .font(CustomFontStyle.title3.font)
                            .foregroundColor(Color.Black)
                            .multilineTextAlignment(.leading)
                            .padding(.vertical,50)
                            .padding(.horizontal,30)
                        
                        
                    }.background(Color.Primary)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .padding(60)
                    
                    
                    Spacer()
                    
                    
                    NavigationLink(destination: CharacteristicsView(), label: {
                        Image(systemName: "play.fill")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .scaledToFit()
                            .padding(30)
                            .padding(.vertical,20)
                            .foregroundColor(Color.White)
                            .background(Color.Terc)
                    })
                    .cornerRadius(500)
                    .shadow(radius: 5)
                    .buttonStyle(CustomButtonStyle())
                    
                    
                }.padding(.horizontal,50)
                    .padding(.bottom,150)
                
            }.background(Color.White)
//            
//        }.navigationViewStyle(.stack)
//            .navigationBarHidden(true)
    }
}

struct MenuView_Preview : PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
