//
//  PlayerScrollView.swift
//  StudyFun_SwiftUI
//
//  Created by Rashid Gaitov on 19.10.2023.
//

import Foundation
import SwiftUI
import AVKit

//struct PlayerScrollView : UIViewRepresentable {
//    
//    
//    func makeCoordinator() -> Coordinator {
//        
//        return PlayerScrollView.Coordinator(parent1: self)
//    }
//    
//    @Binding var data : [VideoModel]
//    
//    func makeUIView(context: Context) -> UIScrollView{
//        
//        let view = UIScrollView()
//        
//        let childView = UIHostingController(rootView: PlayerView(data: self.$data))
//        
//        // each children occupies one full screen so height = count * height of screen...
//        
//        childView.view.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat((data.count)))
//        
//        // same here...
//        
//        view.contentSize = CGSize(width: UIScreen.main.bounds.width - 12, height: UIScreen.main.bounds.height * CGFloat((data.count)))
//        
//        view.addSubview(childView.view)
//        view.showsVerticalScrollIndicator = false
//        view.showsHorizontalScrollIndicator = false
//        
//        // to ignore safe area...
////        view.contentInsetAdjustmentBehavior = .never
//        view.isPagingEnabled = true
//    
//        view.delegate = context.coordinator
//        
//        return view
//    }
//    
//    func updateUIView(_ uiView: UIScrollView, context: Context) {
//        
//        // to dynamically update height based on data...
//        
//        uiView.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat((data.count)))
//        
//        for i in 0..<uiView.subviews.count{
//            
//            uiView.subviews[i].frame = CGRect(x: 0, y: 0,width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat((data.count)))
//        }
//    }
//    
//    class Coordinator : NSObject,UIScrollViewDelegate{
//        
//        var parent : PlayerScrollView
//        var index = 0
//        
//        init(parent1 : PlayerScrollView) {
//            
//            parent = parent1
//        }
//        
//        func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
//            
//            let currenrindex = Int(scrollView.contentOffset.y / UIScreen.main.bounds.height)
//            
//            if index != currenrindex{
//                
//                index = currenrindex
//                
//                for i in 0..<parent.data.count{
//                    
//                    // pausing all other videos...
//                    parent.data[i].player.seek(to: .zero)
//                    parent.data[i].player.pause()
//                }
//                
//                // playing next video...
//                
//                parent.data[index].player.play()
//                
//                parent.data[index].player.actionAtItemEnd = .none
//                
//                NotificationCenter.default.addObserver(forName: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: parent.data[index].player.currentItem, queue: .main) { (_) in
//                    
//                    // notification to identify at the end of the video...
//                    
//                    // enabling replay button....
//                    self.parent.data[self.index].replay = true
//                }
//            }
//        }
//    }
//    
//    
//}


struct PlayerScrollView : View {
    
    @Binding var data : [VideoModel]
    
    var body: some View {
        
        TabView {
            ForEach(0..<self.data.count) {i in
                
                ZStack {
                    VideoPlayer(player: data[i].player)
                        .aspectRatio(contentMode: .fill)
                        .onAppear {
                            
                            // doing it for first video because scrollview didnt dragged yet...
                            
                            self.data[i].player.play()
                            
                            self.data[i].player.actionAtItemEnd = .none
                            
                            NotificationCenter.default.addObserver(forName: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: self.data[i].player.currentItem, queue: .main) { (_) in
                                
                                // notification to identify at the end of the video...
                                
                                // enabling replay button....
                                self.data[i].replay = true
                            }
                        }
                        
                    if self.data[i].replay{
                        
                        Button(action: {
                            
                            // playing the video again...
                            
                            self.data[i].replay = false
                            self.data[i].player.seek(to: .zero)
                            self.data[i].player.play()
                            
                        }) {
                            
                            Image(systemName: "goforward")
                            .resizable()
                            .frame(width: 55, height: 60)
                            .foregroundColor(.white)
                        }
                    }
                }
            }
        }
        .tabViewStyle(.page)
        .cornerRadius(30)
        .padding(.top, 30)
        .padding(.bottom, 50)
        
    }
}


