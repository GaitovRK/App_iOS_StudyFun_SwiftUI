//
//  CourseContentView().swift
//  StudyFun_SwiftUI
//
//  Created by Rashid Gaitov on 17.11.2023.
//

import SwiftUI

struct CourseContentView: View {
    @State var data = VideoModel.sampleData
    @State var currentLesson = "1"
    
    var body: some View {
        PlayerView(data: $data, currentLesson: $currentLesson)
    }
}

struct CourseContentView___Previews: PreviewProvider {
    static var previews: some View {
        CourseContentView()
    }
}
