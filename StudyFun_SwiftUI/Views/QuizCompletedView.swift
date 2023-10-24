//
//  QuizCompletedView.swift
//  StudyFun_SwiftUI
//
//  Created by Rashid Gaitov on 24.10.2023.
//

import SwiftUI

struct QuizCompletedView: View {
    var body: some View {
        VStack {
            QuizTextView(size: 30, text: "Quiz 1 Completed")
            
            Image(systemName: "gamecontroller.fill")
                .font(.system(size: 60))
                .foregroundColor(.red)
                .padding()
            
        }
        
        
        
    }
}

struct QuizCompletedView_Previews: PreviewProvider {
    static var previews: some View {
        QuizCompletedView()
    }
}
