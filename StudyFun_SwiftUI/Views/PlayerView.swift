//
//  PlayerView.swift
//  StudyFun_SwiftUI
//
//  Created by Rashid Gaitov on 19.10.2023.
//

import Foundation
import SwiftUI
import AVKit

struct PlayerView : View {
    
    @Binding var data : [VideoModel]
    @Binding var currentLesson: String
    
    var body: some View{
        
        TabView{
            ForEach(0..<self.data.count){i in
                
                ZStack {
                    
//                    CustomVideoPlayer(player: self.data[i].player)
//                        .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height - 100)
                    VideoPlayer(player: self.data[i].player)
//                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width, height:  UIScreen.main.bounds.height)
                    GeometryReader { proxy in
                        
                    }
                    
                }
                
                
//                Color.red
//                    .background(Color.yellow)
//                    .aspectRatio(contentMode: .fit)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
                
//        ScrollView(.horizontal, showsIndicators: false){
//
//            HStack(spacing: 20) {
//
////            ZStack{
//
//                ForEach(0..<self.data.count){i in
//
//                    GeometryReader { proxy in
//                        CustomVideoPlayer(player: self.data[i].player)
//                            .frame(width: UIScreen.main.bounds.width - 20 , height: UIScreen.main.bounds.height - 60)
//                            .aspectRatio(contentMode: .fill)
//                    }
//
//
////                    if self.data[i].replay{
////
////                        Button(action: {
////
////                            // playing the video again...
////
////                            self.data[i].replay = false
////                            self.data[i].player.seek(to: .zero)
////                            self.data[i].player.play()
////
////                        }) {
////
////                            Image(systemName: "goforward")
////                                .resizable()
////                                .frame(width: 55, height: 60)
////                                .foregroundColor(.white)
////                        }
////                    }
//
//                }
////            }
//        }
//    }
        .onAppear {
            
            // doing it for first video because scrollview didnt dragged yet...
            
            //            self.data[0].player.play()
            
            self.data[0].player.actionAtItemEnd = .none
            
            NotificationCenter.default.addObserver(forName: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: self.data[0].player.currentItem, queue: .main) { (_) in
                
                // notification to identify at the end of the video...
                
                // enabling replay button....
                self.data[0].replay = true
            }
        }
    
        .onDisappear {
            self.data[0].player.pause()
        }
}
}



struct MyPreviewProvider2_Previews: PreviewProvider {
    static var previews: some View {
        CourseContentView()
    }
}
