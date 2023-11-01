//
//  PodcastView.swift
//  StudyFun_SwiftUI
//
//  Created by Rashid Gaitov on 01.11.2023.
//

import SwiftUI

struct PodcastView: View {
    var body: some View {
        ZStack{
            
            Image("module4")
                .resizable()
                .scaledToFill()
                .frame(width: 350, height: 350)
                .cornerRadius(14)
                .shadow(radius: 1)
            
            LinearGradient(colors: [Color(white: 0, opacity: 0.7), .clear], startPoint: .top, endPoint: .bottom)
                .frame(width: 350, height: 350)
                .cornerRadius(14)
            
            Text("Episode 1: About TeacherX")
                .frame(width: 350, height: 350, alignment: .center)
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .font(.system(size: 36, weight: .bold))
        }
    }
}

struct PodcastView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastView()
    }
}
