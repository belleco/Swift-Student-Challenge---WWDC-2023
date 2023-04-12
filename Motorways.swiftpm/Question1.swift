import Foundation
import SwiftUI


struct Question1: View {
    
    @StateObject  var answer = Answers()
    @State private var isShowingView = false
    @State var showClient = false
    
    @State var viewNumber: Int = 0
    var information: ListQuestionView = showQuestionView[0][0]

    var body: some View {
        

        
        VStack{
            
            ClientConversation(imageClient: showQuestionView[viewNumber][0].imageClient, conversation: showQuestionView[viewNumber][0].conversation)
            
            Spacer()
            
            CardQuestion(firstWords: showQuestionView[viewNumber][0].firstWords, boldWord:showQuestionView[viewNumber][0].boldWord, lastwords: showQuestionView[viewNumber][0].lastWord)
            
            HStack {
                CardMotor(imageMotor: showQuestionView[viewNumber][0].imageMotor,icon: showQuestionView[viewNumber][0].icon, title: showQuestionView[viewNumber][0].title, subtitle: showQuestionView[viewNumber][0].subtitle, information: showQuestionView[viewNumber][0].information)
                    .onTapGesture {
                        // Ação a ser executada quando o card for clicado
                        answer.Answers[0] = "Scooter"
                    }
                
                CardMotor(imageMotor: showQuestionView[viewNumber][1].imageMotor,icon: showQuestionView[viewNumber][1].icon, title: showQuestionView[viewNumber][1].title, subtitle: showQuestionView[viewNumber][1].subtitle, information: showQuestionView[viewNumber][1].information)
                    .onTapGesture {
                        // Ação a ser executada quando o card for clicado
                        answer.Answers[0] = "Chopper"
                    }
                
                CardMotor(imageMotor: showQuestionView[viewNumber][2].imageMotor,icon: showQuestionView[viewNumber][2].icon, title: showQuestionView[viewNumber][2].title, subtitle: showQuestionView[viewNumber][2].subtitle, information: showQuestionView[viewNumber][2].information)
                    .onTapGesture {
                        // Ação a ser executada quando o card for clicado
                        answer.Answers[0] = "Sport"
                    }
            } .padding(.horizontal,80)
            
            Spacer()
            
            HStack (spacing: 300){
                
                HStack {
                    
                    MiniCard()
                    
                    Spacer()
                    
                    MiniCard()
                    
                    Spacer()
                    
                    MiniCard()
                    
                    
                } .frame(width: 500, height: 150)
                
                ZStack{
                    if viewNumber > 1 {
                        NavigationLink(destination: ResultView(), label: {
                            Text("See the motorcycle")
                        }).buttonStyle(CustomButtonStyle())
                    }else{
                        Button(action: {
                            self.viewNumber += 1
                        }){
                          Text("Confirm selection")
                        }.buttonStyle(CustomButtonStyle())
                    }
                }
                
            }
        }.background(Color.White)
        
            .sheet(isPresented: $showClient) {
                ClientView()
            }
            .onAppear {
                showClient = true
            }
    }
}


struct Question1_Preview : PreviewProvider {
    static var previews: some View {
        Question1()
    }
}

    
    
