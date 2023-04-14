//
//  File.swift
//  
//
//  Created by Isabelle Colares on 14/04/23.
//

import Foundation
import SwiftUI

struct FinalView: View {
    
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        //        NavigationView{
        
        VStack{
            
            Image("Logo")
                .resizable()
                .aspectRatio( contentMode: .fit)
                .frame(maxWidth: 700)
                .padding(.top, 100)
            
            Spacer()
            
            VStack{
                
                Text("ÚTLIMA CENA")
                    .font(CustomFontStyle.title3.font)
                    .foregroundColor(Color.Black)
                    .multilineTextAlignment(.leading)
                    .padding(.vertical,50)
                    .padding(.horizontal,30)
                
                
                
                Spacer()
                
                
                //ESSE DÁ DISMISS
                Button(action: {
                    dismiss()
                    
                    
                }) {
                    Text("ESSE DÁ BACK")
                    
                }.buttonStyle(CustomButtonStyle())
                    .shadow(radius: 5)
                
            }.padding(.horizontal,50)
                .padding(.bottom,150)
            
        }
        .background(Color.White)
        .onDisappear(){
            self.dismiss()
        }
            
        
    }
        
    
}



struct FinalView_Preview : PreviewProvider {
    static var previews: some View {
        FinalView()
    }
}
