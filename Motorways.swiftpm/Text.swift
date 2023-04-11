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
    
    //Primeira View de Question com conteúdo do: ClientConversation,  3 CardMotor com seus conteúdos
   
[
    //Primeiro Card = Scooter

    ListQuestionView(imageClient: "person.circle", conversation: "I don't want to run too fast, it has to be safe and take me places in the best possible way.", firstWords: "Which of these has the ", boldWord: "speed", lastWord: " the customer wants?", imageMotor: "photo", icon: "info.circle", title: "Scooter", subtitle: "Slow", information: "It has a maximum speed of around 50 km/h and its autonomy range can vary from 50 km to 120 km, depending on the model and conditions of use."),
 
    //Segundo Card = Chopper

    ListQuestionView(imageClient: "person.circle", conversation: "I don't want to run too fast, it has to be safe and take me places in the best possible way.", firstWords: "Which of these has the ", boldWord: "speed", lastWord: " the customer wants?", imageMotor: "photo", icon: "info.circle", title: "Chopper", subtitle: "Medium", information: "texto aqui 2"),

    //Terceiro Card = Sport

    ListQuestionView(imageClient: "person.circle", conversation: "I don't want to run too fast, it has to be safe and take me places in the best possible way.", firstWords: "Which of these has the ", boldWord: "speed", lastWord: " the customer wants?", imageMotor: "photo", icon: "info.circle", title: "Sport", subtitle: "Fast", information: "texto aqui 3")
],



//Segunda View de Question com conteúdo do: ClientConversation, 3 CardMotor com seus conteúdos

[
    //Primeiro Card = Scooter

    ListQuestionView(imageClient: "person.circle",
                     conversation: "I'd like to be able to give a ride to a friend when they need it... But it isn't something that impacts my routine.",
                     firstWords: "Which of these has the ",
                     boldWord: "capacity",
                     lastWord: " the customer wants?",
                     imageMotor: "photo",
                     icon: "info.circle",
                     title: "Scooter",
                     subtitle: "2 people",
                     information: "texto aqui 1"),

    //Segundo Card = Chopper

    ListQuestionView(imageClient: "person.circle",
                     conversation: "I'd like to be able to give a ride to a friend when they need it... But it isn't something that impacts my routine.",
                     firstWords: "Which of these has the ",
                     boldWord: "capacity",
                     lastWord: " the customer wants?",
                     imageMotor: "photo",
                     icon: "info.circle",
                     title: "Chopper",
                     subtitle: "1 person",
                     information: "texto aqui 2"),

    //Terceiro Card = Sport

    ListQuestionView(imageClient: "person.circle",
                     conversation: "I'd like to be able to give a ride to a friend when they need it... But it isn't something that impacts my routine.",
                     firstWords: "Which of these has the ",
                     boldWord: "capacity",
                     lastWord: " the customer wants?",
                     imageMotor: "photo",
                     icon: "info.circle",
                     title: "Sport",
                     subtitle: "1 person",
                     information: " texto aqui 3")
],



//Terceira View de Question com conteúdo do: ClientConversation,  3 CardMotor com seus conteúdos

[
    //Primeiro Card = Scooter

    ListQuestionView(imageClient: "person.circle", conversation: "Little by little I've been saving my money from my college project... It's not that much but my dad said he'd help me with something if I needed it.", firstWords: "Which of these has the ", boldWord: "budget", lastWord: " the customer has?", imageMotor: "photo", icon: "info.circle", title: "Scooter", subtitle: "Low", information: "texto aqui 1"),

    //Segundo Card = Chopper

    ListQuestionView(imageClient: "person.circle", conversation: "Little by little I've been saving my money from my college project... It's not that much but my dad said he'd help me with something if I needed it.", firstWords: "Which of these has the ", boldWord: "budget", lastWord: " the customer wants?", imageMotor: "photo", icon: "info.circle", title: "Chopper", subtitle: "Low and Medium", information: "texto aqui 2"),

    //Terceiro Card = Sport

    ListQuestionView(imageClient: "person.circle", conversation: "Little by little I've been saving my money from my college project... It's not that much but my dad said he'd help me with something if I needed it.", firstWords: "Which of these has the ", boldWord: "budget", lastWord: " the customer wants?", imageMotor: "photo", icon: "info.circle", title: "Sport", subtitle: "High", information: "texto aqui 3")
]
]




