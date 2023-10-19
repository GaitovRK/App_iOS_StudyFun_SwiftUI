//
//  ContentView.swift
//  StudyFun_SwiftUI
//
//  Created by Rashid Gaitov on 19.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var top = 0
    @State var data = VideoModel.sampleData
        
    var body: some View {
        ZStack {
            
            PlayerScrollView(data: self.$data)
            
//            TabView {
//                ForEach(VideoModel.sampleData) {video in
//                    ZStack {
//                        Color(.red)
//                        Text(String(video.id))
//                            .foregroundColor(.white)
//                            .font(.title)
//                    }
//                }
//            }
//            .tabViewStyle(.page)
//            .cornerRadius(30)
//            .padding(.top, 30)
            
            VStack {
                
                HStack {
                    Button {
                        self.top = 0
                    } label: {
                        Image(systemName: "house.circle.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 48))
                    }
                    
                    Spacer()
                    
                    Button {
                        self.top = 1
                    } label: {
                        Image(systemName: "star.circle.fill")
                            .font(.system(size: 48))
                            .foregroundColor(.white)
                    }
                }
                .padding(.top, 48)
                .padding(.horizontal, 24)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    VStack (spacing: 16) {
                        Button {
                            self.top = 0
                        } label: {
                            Image(systemName: "heart.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 48))
                        }
                                                
                        Button {
                            self.top = 1
                        } label: {
                            Image(systemName: "questionmark.bubble.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 48))
                        }
                    }
                }
                .padding(.bottom, 55)
                .padding(.trailing)
            }
        }
        .padding()
//        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
