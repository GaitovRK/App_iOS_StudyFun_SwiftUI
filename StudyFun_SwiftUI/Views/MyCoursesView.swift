//
//  MyCoursesView.swift
//  StudyFun_SwiftUI
//
//  Created by Rashid Gaitov on 28.10.2023.
//

import SwiftUI

struct MyCoursesView: View {
    @State var currentTab = "bookmark"
    
    var body: some View {
        VStack{
            Header()
            
            HStack{
                Text("My Courses")
                Text("Finished")
            }
            
            Spacer()
            
            TabView {
                Text("Home")
                    .tag("house.fill")
                LessonView(currentLesson: 1)
                    .tag("house")
            }
            
            HStack {
                ForEach(["house", "bookmark", "person"], id: \.self) { image in
                    TabBarButtonView(image: image, currentTab: $currentTab)
                }
            }
            .padding()
            .overlay(Divider(), alignment: .top)
            .background(currentTab == "bookmark" ? .red : .clear)
        }
    }
}

struct TabBarButtonView: View {
    var image: String
    @Binding var currentTab: String
    
    var body: some View {
        Button {
            
        } label: {
            Image(systemName: image)
                .font(.system(size: 24))
                .foregroundColor(currentTab == image ? currentTab == "bookmark" ? .white : .primary : .gray)
                .frame(maxWidth: .infinity)
        }

    }
}


struct MyCoursesView_Previews: PreviewProvider {
    static var previews: some View {
        MyCoursesView(currentTab: "")
    }
}
