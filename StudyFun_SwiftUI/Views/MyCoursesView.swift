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
//            Header()
            
            HStack{
                
                Button {
                    
                } label: {
                    Text("My Courses")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.black)
                }

                Button {
                    
                } label: {
                    Text("Finished")
                        .font(.system(size: 20))
                        .foregroundColor(.gray)
                }
            }
            
            Spacer()
            
            TabView {
                Text("Here will be a list of my courses")
            }
            
            
            
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
