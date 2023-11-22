//
//  Home.swift
//  StudyFun_SwiftUI
//
//  Created by Rashid Gaitov on 27.10.2023.
//

import SwiftUI

struct HomeView: View {
    @State var currentTab = "house"
    
    let categories = CategoryModel.categories
    let courses = CourseModel.courses
    let podcasts = PodcastModel.podcasts

    var body: some View {
        
        NavigationView {
            ScrollView {
                CategoriesScrollView(categories: categories)
                
                CoursesScrollView(courses: courses)
                
                PodcastsScrollView(podcasts: podcasts)
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
            .padding(.horizontal)
            .padding(.bottom)
        }
    }
}



struct CategoriesScrollView: View {
    let categories: [CategoryModel]
    
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
            .padding(.top)
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack(spacing: 20){
                
                ForEach(categories) { category in
                    CategoryBox(name: category.name, color: category.color)
                }
            }
            .padding(.horizontal)
            .padding(.bottom)
        }
    }
}


struct PodcastsScrollView: View {
    let podcasts: [PodcastModel]
    
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
            .padding(.horizontal)
            .padding(.bottom)
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
            CourseContentView()
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
                    .frame(width: 150, height: 20, alignment: .topLeading)
                    .foregroundColor(.gray)
                    .font(.system(size: 12, weight: .medium))
            }
        }
    }
}

struct CategoryBox: View {
    var name: String
    var color: Color
    
    var body: some View {
        
        NavigationLink {
            MyCoursesView()
        } label: {
            ZStack {
                ZStack(alignment: .top) {
//                    Image(image)
//                        .resizable()
//                        .scaledToFill()
//                        .frame(width: 100, height: 100)
//                        .cornerRadius(4)
//                        .shadow(radius: 1)
                    
                    color
                        .frame(width: 100, height: 100)
                        .cornerRadius(4)
                        .shadow(radius: 1)
                    
                    LinearGradient(colors: [Color(white: 0, opacity: 0.7), .clear], startPoint: .top, endPoint: .bottom)
                        .frame(width: 100, height: 50)
                        .cornerRadius(4)
                }
                
                Text(name)
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
//                .navigationBarTitleDisplayMode(.inline)
//                .toolbar {
//                    ToolbarItem(placement: .principal) { // <3>
//                        HStack(spacing: 0) {
//                            Text("Study").font(.system(size: 30, weight: .bold))
//                            Text("X").font(.system(size: 30, weight: .heavy)).foregroundColor(Colors.Menu.icon)
//                        }
//                    }
//                }
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
        HomeView()
    }
}

