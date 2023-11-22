//
//  PodcastModel.swift
//  StudyFun_SwiftUI
//
//  Created by Rashid Gaitov on 22.11.2023.
//

import Foundation

struct PodcastModel: Identifiable {
    
    var id: Int
    var image: String
    var title: String
    var subtitle: String
    
    static let podcasts = [PodcastModel(id: 0, image: "module6", title: "Episode 1: About TeacherX", subtitle: "Become healthier"),
                           PodcastModel(id: 1, image: "module5", title: "Episode 7: ETZ Conference", subtitle: "Manage your day"),
                           PodcastModel(id: 2, image: "module4", title: "Episode 12: Cognitive Skills", subtitle: "Stay energetic"),
                           PodcastModel(id: 3, image: "module3", title: "Self Awareness", subtitle: "Make the world better")]
}
