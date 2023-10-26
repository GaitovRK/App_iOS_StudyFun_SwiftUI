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
            VStack {
                HStack {
                    Button {
                        self.top = 0
                    } label: {
                        Image(systemName: "house.fill")
                            .foregroundColor(Colors.Menu.icon)
                            .font(.system(size: 28))
                    }
                    
                    Spacer()
                    
                    Button {
                        self.top = 1
                    } label: {
                        Image(systemName: "bookmark.fill")
                            .font(.system(size: 28))
                            .foregroundColor(Colors.Menu.icon)
                    }
                }
//                .padding(.top, 48)
//                .padding(.horizontal, 24)
                
                PlayerScrollView(data: self.$data)
                
//                HStack {
//                    Spacer()
//
//                    VStack (spacing: 16) {
//                        Button {
//                            self.top = 0
//                        } label: {
//                            Image(systemName: "heart.fill")
////                                .foregroundColor(.white)
//                                .font(.system(size: 36))
//                        }
//
//                        Button {
//                            self.top = 1
//                        } label: {
//                            Image(systemName: "questionmark.bubble.fill")
////                                .foregroundColor(.white)
//                                .font(.system(size: 36))
//                        }
//                    }
//                }
//                .padding(.bottom, 55)
//                .padding(.trailing)
            }
        }
        .padding(.horizontal)
//        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
