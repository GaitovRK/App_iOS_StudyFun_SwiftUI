//
//  CustomVideoPlayer.swift
//  StudyFun_SwiftUI
//
//  Created by Rashid Gaitov on 27.10.2023.
//

import Foundation
import AVKit
import SwiftUI

struct CustomVideoPlayer: UIViewControllerRepresentable {
    var player: AVPlayer
    
    func makeCoordinator() -> Coordinator {
        return CustomVideoPlayer.Coordinator(parent: self)
    }
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let controller = AVPlayerViewController()
        
        controller.player = player
//        controller.showsPlaybackControls = true
        controller.videoGravity = .resizeAspectFill
        
        player.actionAtItemEnd = .none
        
//        NotificationCenter.default.addObserver(context.coordinator, selector: #selector(context.coordinator.restartPlayback), name: .AVPlayerItemDidPlayToEndTime, object: player.currentItem)
        
        return controller
        
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
//        uiViewController.update
        
        
    }
    
    class Coordinator : NSObject {
        var parent: CustomVideoPlayer
        
        
        init(parent: CustomVideoPlayer) {
            self.parent = parent
        }
        
        @objc func restartPlayback() {
            parent.player.seek(to: .zero)
        }
    }
    
    
}
