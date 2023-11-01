//
//  LessonView.swift
//  StudyFun_SwiftUI
//
//  Created by Rashid Gaitov on 27.10.2023.
//

import SwiftUI
import AVKit

struct LessonView: View {
    
    @State var currentLesson: Int
    @State var lessons = VideoModel.sampleData

    var body: some View {
//        GeometryReader { proxy in
//            let size = proxy.size
        
        ZStack {
            TabView(selection: $currentLesson){
                ForEach($lessons) { $lesson in
                    if let player = lesson.player {
                        CustomVideoPlayer(player: lesson.player)
                            .ignoresSafeArea(.all, edges: .top)
                    }
                }
            }
            .tabViewStyle(.page)

//            .ignoresSafeArea(.all, edges: .bottom)
        }
        .background(Color.blue.ignoresSafeArea())
        .onAppear {
            currentLesson = lessons.first?.id ?? 1
    }
}


struct LessonPlayer: View {
    @Binding var lesson: VideoModel
    @Binding var currentLesson: Int
    
    var body: some View {
        ZStack {
            if let player = lesson.player {
                CustomVideoPlayer(player: player)
                //                    .ignoresSafeArea()
                //                GeometryReader { proxy -> Color in
                //                    let minY = proxy.frame(in: .global).minY
                //                    let size = proxy.size
                //                    
                ////                    DispatchQueue.main.async {
                ////                        if -minY<(size.height / 2) && minY<(size.height / 2) && currentLesson == lesson.id {
                ////                            player.play()
                ////                        } else {
                ////                            player.pause()
                ////                        }
                ////                    }
                //                    
                //                    return Color.clear
                //                }
                //                .onDisappear{
                //                    player.pause()
                //                }
                //                .onAppear{
                //                    player.play()
                //
                //                }
                
                
                //                VStack {
                //                    Image(systemName: "")
                //                                    .resizable()
                //                }
                
            }
        }
        }
    }
}
