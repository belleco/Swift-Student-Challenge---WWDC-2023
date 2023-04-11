//
//  Text.swift
//  Motorways
//
//  Created by Isabelle Colares on 11/04/23.
//
import Foundation
import SwiftUI

struct ListQuestionView : Identifiable, Hashable{
    var id = UUID()
    var imageClient: String
    var conversation: String
    var firstWords: String
    var boldWord: String
    var lastWord: String
    var imageMotor: String
    var icon: String
    var title: String
    var subtitle: String
    var information: String
    
    
}
var showQuestionView: [[ListQuestionView]] = [
   
[ListQuestionView(imageClient: "person.circle", conversation: "I don't want to run too fast, it has to be safe and take me places in the best possible way.", firstWords: "Which of these has the ", boldWord: "speed", lastWord: "the customer wants?", imageMotor: "photo", icon: "info.circle", title: "UM", subtitle: "Slow", information: "It has a maximum speed of around 50 km/h and its autonomy range can vary from 50 km to 120 km, depending on the model and conditions of use."),
 ListQuestionView(imageClient: "person.circle", conversation: "I don't want to run too fast, it has to be safe and take me places in the best possible way.", firstWords: "Which of these has the ", boldWord: "speed", lastWord: "the customer wants?", imageMotor: "photo", icon: "info.circle", title: "dois", subtitle: "Slow", information: "It has a maximum speed of around 50 km/h and its autonomy range can vary from 50 km to 120 km, depending on the model and conditions of use.")],
   
    [ListQuestionView(imageClient: "person.circle", conversation: "I don't want to run too fast, it has to be safe and take me places in the best possible way.", firstWords: "Which of these has the ", boldWord: "speed", lastWord: "the customer wants?", imageMotor: "photo", icon: "info.circle", title: "DOIS", subtitle: "Slow", information: "It has a maximum speed of around 50 km/h and its autonomy range can vary from 50 km to 120 km, depending on the model and conditions of use.")],
   
   [ ListQuestionView (imageClient: "person.circle", conversation: "I don't want to run too fast, it has to be safe and take me places in the best possible way.", firstWords: "Which of these has the ", boldWord: "speed", lastWord: "the customer wants?", imageMotor: "photo", icon: "info.circle", title: "TRES", subtitle: "Slow", information: "It has a maximum speed of around 50 km/h and its autonomy range can vary from 50 km to 120 km, depending on the model and conditions of use.")]

]



