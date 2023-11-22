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
    
    static let categories = [CategoryModel(id: 1, name: "Health", color: Colors.lightBlue),
                             CategoryModel(id: 2, name: "Cognitive Skills", color: Colors.lightOrange),
                             CategoryModel(id: 3, name: "Health", color: Colors.lightGreen),
                             CategoryModel(id: 4, name: "Health", color: Colors.pink)]
}
