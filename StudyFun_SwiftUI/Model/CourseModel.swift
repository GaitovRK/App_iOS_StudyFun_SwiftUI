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
    
    
}

