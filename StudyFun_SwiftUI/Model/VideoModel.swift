//
//  VideoModel.swift
//  StudyFun_SwiftUI
//
//  Created by Rashid Gaitov on 19.10.2023.
//

import Foundation
import AVKit
import SwiftUI

struct VideoModel: Identifiable {
    var id : Int
    var player : AVPlayer
    var replay : Bool
    
    static var sampleData = [
        VideoModel(id: 1, player: AVPlayer(url: Bundle.main.url(forResource: "lesson1", withExtension: "MOV")!), replay: false),
        VideoModel(id: 2, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "lesson2", ofType: "MOV")!)), replay: false),
        VideoModel(id: 3, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "lesson3", ofType: "MOV")!)), replay: false)
    ]
}
