//
//  QuizManagerVM.swift
//  StudyFun_SwiftUI
//
//  Created by Rashid Gaitov on 23.10.2023.
//

import Foundation
import SwiftUI


class QuizManagerVM: ObservableObject {
    
    static var currentIndex = 0

    @Published var model = QuizManagerVM.createQuizModel(i: QuizManagerVM.currentIndex)
    @Published var progress = 0

    var timer = Timer()
    var maxProgress = 15
    
    static func createQuizModel(i:Int) -> QuizModel {
        return QuizModel(currentQuestionIndex: i, questionModel: QuizModel.data[i])
    }
    
    init() {
        self.start()
    }
    
    func verifyAnswer(selectedOption: QuizOption) {
        for index in model.questionModel.optionsList.indices {
            model.questionModel.optionsList[index].isMatched = false
            model.questionModel.optionsList[index].isSelected = false
        }
        if let index = model.questionModel.optionsList.firstIndex(where: {$0.optionId == selectedOption.optionId}) {
            if selectedOption.optionId ==  model.questionModel.answer {
                model.questionModel.optionsList[index].isMatched = true
                model.questionModel.optionsList[index].isSelected = true
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    if (QuizManagerVM.currentIndex < 2) {
                        QuizManagerVM.currentIndex = QuizManagerVM.currentIndex + 1
                        self.model = QuizManagerVM.createQuizModel(i: QuizManagerVM.currentIndex)
                    } else {
                        self.model.quizCompleted = true
                        self.model.quizWinningStatus = true
                        self.reset()
                        
                    }
                }
            } else {
                model.questionModel.optionsList[index].isMatched = false
                model.questionModel.optionsList[index].isSelected = true
            }
        }
    }
    
    func restartGame() {
            QuizManagerVM.currentIndex = 0
            model = QuizManagerVM.createQuizModel(i: QuizManagerVM.currentIndex)
            self.start()
    }

    func start() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats:true, block: { time in
            if self.progress == self.maxProgress {
                self.model.quizCompleted = true
                self.model.quizWinningStatus = false
                self.reset()
            } else {
                self.progress += 1
            }
        })
    }

    func reset () {
        timer.invalidate()
        self.progress = 0
    }
}
