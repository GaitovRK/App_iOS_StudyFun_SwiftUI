//
//  Home.swift
//  StudyFun_SwiftUI
//
//  Created by Rashid Gaitov on 27.10.2023.
//

import SwiftUI

struct Home: View {
    @State var currentTab = "house"
    let categories = CourseModel.categories
    let courses = CourseModel.courses
    let podcasts = CourseModel.podcasts

    var body: some View {
        NavigationView {
            VStack{
//                Header()
//                    .navigationTitle("StudyX")
//                    .navigationBarTitleDisplayMode(.inline)
                

                
                ScrollView {
                    CategoriesScrollView(courses: categories)
                    
                    CoursesScrollView(courses: courses)
                    
                    PodcastsScrollView(podcasts: podcasts)
                }
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) { // <3>
                        HStack(spacing: 0) {
                            Text("Study").font(.system(size: 30, weight: .bold))
                            Text("X").font(.system(size: 30, weight: .heavy)).foregroundColor(Colors.Menu.icon)
                        }
                    }
                }
                
                HStack {
                    ForEach(["house", "bookmark", "person"], id: \.self) { image in
                        TabBarButtonView(image: image, currentTab: $currentTab)
                    }
                }
                .padding()
                .overlay(Divider(), alignment: .top)
            }
        }
        .tint(.red)
    }
}



struct Header: View {
    
    var body: some View {
        HStack {
            
            Spacer()
            
            HStack(spacing: 0){
                Text("Study")
                    .font(.system(size: 30))
                    .font(.title)
                    .fontWeight(.bold)
                Text("X")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                    .foregroundColor(.red)
            }
            .padding(.leading, 60)
            
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "magnifyingglass")
                    .padding()
                    .font(.system(size: 24))
                    .foregroundColor(.black)
                    .fontWeight(.light)
            }
            
        }
    }
}

//MARK: Scroll Views

struct CoursesScrollView: View {
    let courses: [CourseModel]
    
    var body: some View {
        
        HStack{
            
            Text("Popular Courses")
                .font(.system(size: 20, weight: .medium))
            
            Spacer()
            
            Button(action: {
                
            }) {
                
                Text("View all").foregroundColor(.gray)
            }
            
        }.padding(.horizontal)
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack(spacing: 20){
                
                ForEach(courses) { course in
                    CourseBox(image: course.image, title: course.title, subtitle: course.subtitle)
                }
            }
            .padding()
        }
    }
}


struct CategoriesScrollView: View {
    let courses: [CourseModel]
    
    var body: some View {
        
        HStack{
            
            Text("Categories")
                .font(.system(size: 20, weight: .medium))
            
            Spacer()
            
            Button(action: {
                
            }) {
                
                Text("View all").foregroundColor(.gray)
            }
            
        }.padding(.horizontal)
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack(spacing: 20){
                
                ForEach(courses) { course in
                    CategoryBox(image: course.image, title: course.title, subtitle: course.subtitle)
                }
                
                
            }
            .padding()
        }
        
    }
}


struct PodcastsScrollView: View {
    let podcasts: [CourseModel]
    
    var body: some View {
        
        HStack{
            
            Text("TeacherX Podcasts")
                .font(.system(size: 20, weight: .medium))
            
            Spacer()
            
            Button(action: {
                
            }) {
                
                Text("View all").foregroundColor(.gray)
            }
            
        }.padding(.horizontal)
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack(spacing: 20){
                
                ForEach(podcasts) { podcast in
                    PodcastBox(image: podcast.image, title: podcast.title, subtitle: podcast.subtitle)
                }
            }
            .padding()
        }
        
    }
}

//MARK: Box Views

struct CourseBox: View {
    var image: String
    var title: String
    var subtitle: String
    
    var body: some View {
        
        NavigationLink {
            ContentView()
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) { // <3>
                        HStack(spacing: 0) {
                            Text("Study").font(.system(size: 30, weight: .bold))
                            Text("X").font(.system(size: 30, weight: .heavy)).foregroundColor(Colors.Menu.icon)
                        }
                    }
                }
        } label: {
            VStack(spacing: 6){
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 250)
                    .cornerRadius(8)
                    .shadow(radius: 1)
                
                Text(title)
                    .frame(width: 150, alignment: .leading)
                    .foregroundColor(.black)
                    .font(.system(size: 14, weight: .medium))
                Text(subtitle)
                    .frame(width: 150, height: 40, alignment: .topLeading)
                
                    .foregroundColor(.gray)
                    .font(.system(size: 12, weight: .medium))
            }
        }
    }
}

struct CategoryBox: View {
    var image: String
    var title: String
    var subtitle: String
    
    var body: some View {
        
        NavigationLink {
            MyCoursesView()
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) { // <3>
                        HStack(spacing: 0) {
                            Text("Study").font(.system(size: 30, weight: .bold))
                            Text("X").font(.system(size: 30, weight: .heavy)).foregroundColor(Colors.Menu.icon)
                        }
                    }
                }
        } label: {
            ZStack{
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .cornerRadius(4)
                    .shadow(radius: 1)
                
                LinearGradient(colors: [Color(white: 0, opacity: 0.7), .clear], startPoint: .top, endPoint: .bottom)
                    .frame(width: 100, height: 100)
                    .cornerRadius(4)

                
                Text(title)
                    .frame(width: 100, alignment: .topLeading)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.white)
                    .font(.system(size: 14, weight: .bold))
                    .offset(x: 5, y: -30)
            }
        }
    }
}


struct PodcastBox: View {
    var image: String
    var title: String
    var subtitle: String
    
    var body: some View {
        
        NavigationLink {
            PodcastView()
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) { // <3>
                        HStack(spacing: 0) {
                            Text("Study").font(.system(size: 30, weight: .bold))
                            Text("X").font(.system(size: 30, weight: .heavy)).foregroundColor(Colors.Menu.icon)
                        }
                    }
                }
        } label: {
            ZStack{
                
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 160, height: 160)
                    .cornerRadius(4)
                    .shadow(radius: 1)
                
                LinearGradient(colors: [Color(white: 0, opacity: 0.7), .clear], startPoint: .top, endPoint: .bottom)
                    .frame(width: 160, height: 160)
                    .cornerRadius(4)

                
                Text(title)
                    .frame(width: 160, height: 160, alignment: .center)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .bold))
            }
        }
    }
}



struct TabBarButton: View {
    
    var image: String
    @Binding var currentTab: String
    
    var body: some View {
        Button {
            
        } label: {
            ZStack{
                Image(systemName: image)
            }
            .foregroundColor(currentTab == image ? .gray : .white)
            .frame(maxWidth: .infinity)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

