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

    ListQuestionView(imageClient: "person.circle", conversation: "I don't want to run too fast, it has to be safe and take me places in the best possible way.", firstWords: "Which of these has the ", boldWord: "speed", lastWord: " the customer wants?", imageMotor: "Scooter", icon: "info.circle", title: "Scooter", subtitle: "Slow", information: "It has a maximum speed of around 50 km/h and its autonomy range can vary from 50 km to 120 km, depending on the model and conditions of use."),
 
    //Segundo Card = Chopper

    ListQuestionView(imageClient: "person.circle", conversation: "I don't want to run too fast, it has to be safe and take me places in the best possible way.", firstWords: "Which of these has the ", boldWord: "speed", lastWord: " the customer wants?", imageMotor: "Chopper", icon: "info.circle", title: "Chopper", subtitle: "Medium", information: "texto aqui 2"),

    //Terceiro Card = Sport

    ListQuestionView(imageClient: "person.circle", conversation: "I don't want to run too fast, it has to be safe and take me places in the best possible way.", firstWords: "Which of these has the ", boldWord: "speed", lastWord: " the customer wants?", imageMotor: "Scooter", icon: "info.circle", title: "Sport", subtitle: "Fast", information: "texto aqui 3")
],



//Segunda View de Question com conteúdo do: ClientConversation, 3 CardMotor com seus conteúdos

[
    //Primeiro Card = Scooter

    ListQuestionView(imageClient: "person.circle",
                     conversation: "I'd like to be able to give a ride to a friend when they need it... But it isn't something that impacts my routine.",
                     firstWords: "Which of these has the ",
                     boldWord: "capacity",
                     lastWord: " the customer wants?",
                     imageMotor: "Scooter",
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
                     imageMotor: "Chopper",
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
                     imageMotor: "Scooter",
                     icon: "info.circle",
                     title: "Sport",
                     subtitle: "1 person",
                     information: " texto aqui 3")
],



//Terceira View de Question com conteúdo do: ClientConversation,  3 CardMotor com seus conteúdos

[
    //Primeiro Card = Scooter

    ListQuestionView(imageClient: "person.circle", conversation: "Little by little I've been saving my money from my college project... It's not that much but my dad said he'd help me with something if I needed it.", firstWords: "Which of these has the ", boldWord: "budget", lastWord: " the customer has?", imageMotor: "Scooter", icon: "info.circle", title: "Scooter", subtitle: "Low", information: "texto aqui 1"),

    //Segundo Card = Chopper

    ListQuestionView(imageClient: "person.circle", conversation: "Little by little I've been saving my money from my college project... It's not that much but my dad said he'd help me with something if I needed it.", firstWords: "Which of these has the ", boldWord: "budget", lastWord: " the customer wants?", imageMotor: "Chopper", icon: "info.circle", title: "Chopper", subtitle: "Low and Medium", information: "texto aqui 2"),

    //Terceiro Card = Sport

    ListQuestionView(imageClient: "person.circle", conversation: "Little by little I've been saving my money from my college project... It's not that much but my dad said he'd help me with something if I needed it.", firstWords: "Which of these has the ", boldWord: "budget", lastWord: " the customer wants?", imageMotor: "Scooter", icon: "info.circle", title: "Sport", subtitle: "High", information: "texto aqui 3")
]
]




struct ListResultView : Identifiable, Hashable {
    var id = UUID()
    var imageMotor: String
    var motorName: String
    var descriptionMotor1: String
    var descriptionMotor2: String
    var buttonstatement: String
    
}

var showResultView: [ListResultView] = [

ListResultView(imageMotor: "Scooter", motorName: "Scooter", descriptionMotor1: "“Each motorcycle has its singularities, pros and cons according to what you want at that moment as well as life's decisions, you need to know yourself enough to follow what fits best with your values... your profile, your self”", descriptionMotor2: "After a moment of decisions, this is the motorcycle that best suits the customer, now let's finalize the sale.", buttonstatement: "Sell the motorcicycle"),
    
ListResultView(imageMotor: "Chopper", motorName: "Chopper", descriptionMotor1: "“Each motorcycle has its singularities, pros and cons according to what you want at that moment as well as life's decisions, you need to know yourself enough to follow what fits best with your values... your profile, your self”", descriptionMotor2: "After a moment of decisions, this is the motorcycle that best suits the customer, now let's finalize the sale.", buttonstatement: "Sell the motorcicycle"),
    
    
 ListResultView(imageMotor: "Scooter", motorName: "Sport", descriptionMotor1: "“Each motorcycle has its singularities, pros and cons according to what you want at that moment as well as life's decisions, you need to know yourself enough to follow what fits best with your values... your profile, your self”", descriptionMotor2: "After a moment of decisions, this is the motorcycle that best suits the customer, now let's finalize the sale.", buttonstatement: "Sell the motorcicycle")

]

