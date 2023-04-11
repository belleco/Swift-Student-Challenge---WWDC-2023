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
            
            ClientConversation(imageClient: showQuestionView[viewNumber][0].imageClient, conversation: "I don't want to run too fast, it has to be safe and take me places in the best possible way.")
            
            Spacer()
            
            CardQuestion(firstWords: "Which of these has the ", boldWord: "speed", lastwords: " the customer wants?")
            
            HStack {
                CardMotor(imageMotor: "photo",icon: "info.circle", title: showQuestionView[viewNumber][0].title, subtitle: showQuestionView[viewNumber][0].subtitle,  information: "It has a maximum speed of around 50 km/h and its autonomy range can vary from 50 km to 120 km, depending on the model and conditions of use.")
                    .onTapGesture {
                        // Ação a ser executada quando o card for clicado
                        answer.Answers[0] = "Scooter"
                    }
                
                CardMotor(imageMotor: "photo",icon: "info.circle", title: showQuestionView[viewNumber][1].title, subtitle: showQuestionView[viewNumber][1].subtitle,  information: "It has a maximum speed of around 50 km/h and its autonomy range can vary from 50 km to 120 km, depending on the model and conditions of use.")
                    .onTapGesture {
                        // Ação a ser executada quando o card for clicado
                        answer.Answers[0] = "Chopper"
                    }
                
                CardMotor(imageMotor: "photo",icon: "info.circle", title: showQuestionView[viewNumber][2].title, subtitle: showQuestionView[viewNumber][2].subtitle,  information: "It has a maximum speed of around 50 km/h and its autonomy range can vary from 50 km to 120 km, depending on the model and conditions of use.")
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
                        })
                    }else{
                        Button(action: {
                            self.viewNumber += 1
                        }){
                          Text("Confirm selection")
                        }
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

    
    
