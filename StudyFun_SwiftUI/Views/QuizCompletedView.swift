//
//  QuizCompletedView.swift
//  StudyFun_SwiftUI
//
//  Created by Rashid Gaitov on 24.10.2023.
//

import SwiftUI

struct QuizCompletedView: View {
    
    var quizManagerVM: QuizManagerVM
    var body: some View {
        
        NavigationView {
            ZStack {
                
    //            Colors.Menu.background
    //                .ignoresSafeArea()
                
                VStack(spacing: 30) {
                    
                    Image(systemName: "party.popper.fill")
                        .font(.system(size: 120))
                        .foregroundColor(Colors.Menu.icon)
                        .shadow(color: Colors.Menu.iconSecondary, radius: 4)
                    
                    VStack(spacing: 20) {
                        QuizCompletedTextView(size: 30, text: "Practice complete!", color: Colors.Menu.text)
                        
                        HStack {
                            Image(systemName: "checkmark.circle.fill")
                                .font(.system(size: 25))
                                .foregroundColor(.green)
                            QuizCompletedTextView(size: 25, text: "3/3", color: Colors.Menu.text)
                                
                        }
                        .padding()
//                        .background {
//                            RoundedRectangle(cornerRadius: 10)
//                                .stroke(Colors.Menu.icon, lineWidth: 3)
//                        }
                        
                        
                        
                    }
                    .padding()
    //                .background(.white)
                    .cornerRadius(10)

                    
                    Button {
                        quizManagerVM.restartGame()
                        
                    } label: {
                        HStack(spacing: 15) {
                            Image(systemName: "play.fill")
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                                .shadow(color: Colors.Menu.iconSecondary, radius: 4)
                            
                            Text("Continue Learning")
                                .font(.system(size: 25, weight: .bold, design: .rounded))
                                .foregroundColor(.white)
                            
                        }
                        .frame(width: 300, height: 60)
                        .background(Colors.Menu.icon)
                        .cornerRadius(30)
                    }
                    
                }
    //            .shadow(radius: 6, x:0, y: 5)


            }
            
            .navigationBarItems(
                leading: Button(action: {
                    //Go to main screen
                }, label: {
                    Image(systemName: "multiply")
                        .foregroundColor(.black)
                })
            )
        }
    }
}


struct QuizCompletedTextView: View {
    var size: CGFloat
    var text: String
    var color: Color
    
    var body: some View {
        Text(text)
            .font(.system(size: size, weight: .bold, design: .rounded))
            .foregroundColor(color)
//            .shadow(radius: 1, x: 0, y: 0)
    }
}






struct QuizCompletedView_Previews: PreviewProvider {
    
    static var previews: some View {
        QuizCompletedView(quizManagerVM: QuizManagerVM())
    }
}
