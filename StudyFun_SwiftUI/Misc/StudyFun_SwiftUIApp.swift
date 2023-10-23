//
//  StudyFun_SwiftUIApp.swift
//  StudyFun_SwiftUI
//
//  Created by Rashid Gaitov on 19.10.2023.
//

import SwiftUI

@main
struct StudyFun_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            QuizView(quizManagerVM: QuizManagerVM())
        }
    }
}
