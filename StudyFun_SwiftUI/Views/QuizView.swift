//
//  QuizView.swift
//  StudyFun_SwiftUI
//
//  Created by Rashid Gaitov on 23.10.2023.
//

import SwiftUI

struct QuizView: View {
    @ObservedObject var quizManagerVM: QuizManagerVM
    
    var body: some View {
        ZStack {
//            Image("")
//                .resizable()
//                .aspectRatio(contentMode: ContentMode.fill)
//                .ignoresSafeArea()
            
            LinearGradient(colors: [Colors.Menu.greenBackground, Colors.Menu.background], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
//            Colors.Menu.greenBackground
//                .ignoresSafeArea()
            
            if quizManagerVM.model.quizCompleted {
                QuizCompletedView(quizManagerVM: quizManagerVM)
            } else {
                VStack {
                    QuizTextView(size: 30, text: "Knowledge Check")
                    
                    QuizTextView(size: 22, text:quizManagerVM.model.questionModel.question)
                        .lineLimit(3)
                        .frame(width: UIScreen.main.bounds.size.width - 20, height: 60, alignment: .center)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    ZStack {
                        Circle()
                            .stroke(lineWidth: 15)
                            .foregroundColor(Colors.Menu.iconSecondary)
    //                        .opacity()
                        
                        Circle()
                            .trim(from: 0.0, to: min(CGFloat(quizManagerVM.progress), 1.0))
    //                        .trim(from: 0.0, to: min(CGFloat((Double(quizManagerVM.progress) * Double(quizManagerVM.maxProgress))/100),1.0))

                            .stroke(LinearGradient(
                                colors: [Colors.Menu.iconSecondary, Colors.Menu.icon],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing),
                                style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                            .rotationEffect(Angle(degrees: 270))
                            .animation(Animation.linear(duration: Double(quizManagerVM.maxProgress)), value: quizManagerVM.progress)
                        
                        QuizTextView(size: 40, text: String(quizManagerVM.progress))
                    }.frame(width: 150, height: 150)
                    
                    Spacer()
                    
                    OptionsGridView(quizManagerVM: quizManagerVM)
                }
            }
            
        }
    }
}

struct QuizView_Previews: PreviewProvider {
    
    static var previews: some View {
        QuizView(quizManagerVM: QuizManagerVM())
    }
}


struct QuizTextView: View {
    var size: CGFloat
    var text: String
    var body: some View {
        Text(text)
            .font(.system(size: size, weight: .bold, design: .rounded))
            .foregroundColor(.white)
            .shadow(color: Colors.Menu.icon, radius: 2, x: 0, y: 0)
    }
}

