//
//  Home.swift
//  StudyFun_SwiftUI
//
//  Created by Rashid Gaitov on 27.10.2023.
//

import SwiftUI

struct Home: View {
    @State var currentTab = "house"
    
    var courses = [Course(id: 0, image: "module0", title: "Sports Benefits", subtitle: "Become healthier"),
                   Course(id: 1, image: "module1", title: "Daily Life", subtitle: "Manage your day"),
                   Course(id: 2, image: "module2", title: "Healthy Food", subtitle: "Stay energetic"),
                   Course(id: 3, image: "module3", title: "Let's Plant", subtitle: "Make the world better")]
    
    let categories = [Course(id: 0, image: "module4", title: "Health", subtitle: "Become healthier"),
                      Course(id: 1, image: "module5", title: "Personal Development", subtitle: "Manage your day"),
                      Course(id: 2, image: "module6", title: "Cognitive Skills", subtitle: "Stay energetic"),
                      Course(id: 3, image: "module3", title: "Self Awareness", subtitle: "Make the world better")]
    
    let podcasts = [Course(id: 0, image: "module6", title: "Episode 1: About TeacherX", subtitle: "Become healthier"),
                      Course(id: 1, image: "module5", title: "Episode 7: ETZ Conference", subtitle: "Manage your day"),
                      Course(id: 2, image: "module4", title: "Episode 12: Cognitive Skills", subtitle: "Stay energetic"),
                      Course(id: 3, image: "module3", title: "Self Awareness", subtitle: "Make the world better")]
    
    var body: some View {
        VStack{
            Header()
            
            ScrollView {
                CategoriesScrollView(courses: categories)
                
                CourseScrollView(courses: courses)
                
                PodcastsView(podcasts: podcasts)
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


struct CourseScrollView: View {
    let courses: [Course]
    
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
                    CourseView(image: course.image, title: course.title, subtitle: course.subtitle)
                }
                
                
            }
            .padding()
        }
        
    }
}


struct CategoriesScrollView: View {
    let courses: [Course]
    
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
                    CategoryView(image: course.image, title: course.title, subtitle: course.subtitle)
                }
                
                
            }
            .padding()
        }
        
    }
}

struct Course: Identifiable {
    var id: Int
    var image: String
    var title: String
    var subtitle: String
}


struct CourseView: View {
    var image: String
    var title: String
    var subtitle: String
    
    var body: some View {
        Button(action: {
            
        }) {
            
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

struct CategoryView: View {
    var image: String
    var title: String
    var subtitle: String
    
    var body: some View {
        
        NavigationLink {
            MyCoursesView()
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


struct PodcastView: View {
    var image: String
    var title: String
    var subtitle: String
    
    var body: some View {
        Button(action: {
            
        }) {
            
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

struct PodcastsView: View {
    let podcasts: [Course]
    
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
                    PodcastView(image: podcast.image, title: podcast.title, subtitle: podcast.subtitle)
                }
                
                
            }
            .padding()
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

