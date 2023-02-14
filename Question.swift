//
//  Question.swift
//  PersonalityQuiz
//
//  Created by Juliana Nielson on 2/9/23.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

struct Answer {
    var text: String
    var type: FlowerType
}

enum ResponseType {
    case single, multiple, ranged
}

enum FlowerType: String {
    case forgetMeNot = "Forget-Me-Not", poppy = "Poppy", carnation = "Carnation", daisy = "Daisy"
    
    var definition: String {
        switch self {
        case .forgetMeNot:
            return "You're sensitive and sentimental. Your belongings hold precious memories to you, so you have trouble getting rid of them. You read people like words, and you always know how they're feeling. People like to listen to you explain things as you've seen them, because you see the world far differently than they do."
        case .poppy :
            return "You have unique creative abilities that are tough to match. This makes you naturally gifted in many ways, but sometimes your unmatched creativity creates a boundary between you and others. You can alwasy rely on yourself to come up with an obscure, but effective, solution to any problem."
        case .carnation:
            return "You excell at making friendships that last, regardless of age and gender. You never forget a birthday and you always remember anniversaries. When the going gets tough, you have a multitude of friends to fall back on. Remember to keep your friends close, because they wouldn't trade you for the world."
        case .daisy:
            return "You are as bright and sunny as the sun itself. You give off a joyful light whereever you go, and it's contagious to others. You always know what to say to make someone laugh, but sometimes you struggle to connect with them empathetically. People admire you for your ability to remain bright and bubbly regardless of your life's circumstances."
        }
    }
}
