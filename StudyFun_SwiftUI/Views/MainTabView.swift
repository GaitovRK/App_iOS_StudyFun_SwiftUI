//
//  MainTabView.swift
//  StudyFun_SwiftUI
//
//  Created by Rashid Gaitov on 02.11.2023.
//

import SwiftUI

struct MainTabView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
 
        NavigationView {
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                    }
                MyCoursesView()
                    .tabItem {
                        Image(systemName: "bookmark")
                    }
                
                ProfileView()
                    .tabItem {
                        Image(systemName: "person")
                    }
                
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack(spacing: 0) {
                        Text("Study").font(.system(size: 30, weight: .bold))
                        Text("X").font(.system(size: 30, weight: .heavy)).foregroundColor(Colors.Menu.icon)
                    }
                }
            }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
