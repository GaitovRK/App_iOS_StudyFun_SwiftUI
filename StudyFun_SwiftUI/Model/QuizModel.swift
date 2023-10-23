//
//  QuizModel.swift
//  StudyFun_SwiftUI
//
//  Created by Rashid Gaitov on 23.10.2023.
//

import Foundation
import SwiftUI

struct QuizModel {
    var currentQuestionIndex: Int
    var questionModel: QuestionModel
    var quizCompleted: Bool = false
    var quizWinningStatus: Bool = false
    
    static var data: [QuestionModel] {
        [
            QuestionModel(question: "Which of the following is a key component of critical thinking?",
                          answer: "B",
                          optionsList: [QuizOption(id: 11,optionId: "A", option: "Talking", color: Color.yellow),
                                        QuizOption(id: 12,optionId: "B", option: "Questioning", color: Color.red),
                                        QuizOption(id: 13,optionId: "C", option: "Avoiding problems", color: Color.green),
                                        QuizOption(id: 14,optionId: "D", option: "Intuition", color: Color.purple)]),
            
            QuestionModel(question: "Which of these animals swims in upright position?",
                          answer: "C",
                          optionsList: [QuizOption(id: 21,optionId: "A", option: "Sea Lion", color: Color.yellow),
                                        QuizOption(id: 22,optionId: "B", option: "Sea Urchin", color: Color.red),
                                        QuizOption(id: 23,optionId: "C", option: "Seahorse", color: Color.green),
                                        QuizOption(id: 24,optionId: "D", option: "Sea slug", color: Color.purple)]),
            
            QuestionModel(question: "Which is the world largest living fish?",
                          answer: "B",
                          optionsList: [QuizOption(id: 31,optionId: "A", option: "Manta Ray", color: Color.yellow),
                                        QuizOption(id: 32,optionId: "B", option: "Whale Shark", color: Color.red),
                                        QuizOption(id: 33,optionId: "C", option: "Marlin", color: Color.green),
                                        QuizOption(id: 34,optionId: "D", option: "Sailfish", color: Color.purple)])
        ]
    }
}

struct QuestionModel {
    var question: String
    var answer: String
    var optionsList: [QuizOption]
}

struct QuizOption : Identifiable {
    var id: Int
    var optionId: String
    var option: String
    var color: Color
    var isSelected : Bool = false
    var isMatched : Bool = false
}
