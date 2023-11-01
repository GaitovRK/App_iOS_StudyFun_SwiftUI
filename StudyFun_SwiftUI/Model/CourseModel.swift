//
//  CourseModel.swift
//  StudyFun_SwiftUI
//
//  Created by Rashid Gaitov on 01.11.2023.
//

import Foundation


struct CourseModel: Identifiable {
    var id: Int
    var image: String
    var title: String
    var subtitle: String
    
    
    static let courses = [CourseModel(id: 0, image: "module0", title: "Sports Benefits", subtitle: "Become healthier"),
                   CourseModel(id: 1, image: "module1", title: "Daily Life", subtitle: "Manage your day"),
                   CourseModel(id: 2, image: "module2", title: "Healthy Food", subtitle: "Stay energetic"),
                   CourseModel(id: 3, image: "module3", title: "Let's Plant", subtitle: "Make the world better")]
    
    static let categories = [CourseModel(id: 0, image: "module4", title: "Health", subtitle: "Become healthier"),
                      CourseModel(id: 1, image: "module5", title: "Personal Development", subtitle: "Manage your day"),
                      CourseModel(id: 2, image: "module6", title: "Cognitive Skills", subtitle: "Stay energetic"),
                      CourseModel(id: 3, image: "module3", title: "Self Awareness", subtitle: "Make the world better")]
    
    static let podcasts = [CourseModel(id: 0, image: "module6", title: "Episode 1: About TeacherX", subtitle: "Become healthier"),
                      CourseModel(id: 1, image: "module5", title: "Episode 7: ETZ Conference", subtitle: "Manage your day"),
                      CourseModel(id: 2, image: "module4", title: "Episode 12: Cognitive Skills", subtitle: "Stay energetic"),
                      CourseModel(id: 3, image: "module3", title: "Self Awareness", subtitle: "Make the world better")]
}

