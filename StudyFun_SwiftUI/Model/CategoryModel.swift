//
//  CategoryModel.swift
//  StudyFun_SwiftUI
//
//  Created by Rashid Gaitov on 22.11.2023.
//

import Foundation
import SwiftUI

struct CategoryModel: Identifiable {
    
    var id: Int
    let name: String
    let color: Color
    let image: String
    
    static let categories = [CategoryModel(id: 1, name: "Health", color: Colors.lightBlue, image: "heart"),
                             CategoryModel(id: 2, name: "Cognitive Skills", color: Colors.lightOrange, image: "brain.head.profile"),
                             CategoryModel(id: 3, name: "Logic", color: Colors.lightGreen, image: "lightbulb"),
                             CategoryModel(id: 4, name: "Sport", color: Colors.pink, image: "figure.run")]
}
