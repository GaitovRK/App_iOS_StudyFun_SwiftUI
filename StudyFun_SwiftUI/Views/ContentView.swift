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

            VStack {
                HStack(spacing: 25) {
                    Button {
                        self.top = 0
                    } label: {
                        Text("Home")
                            .foregroundColor(self.top == 0 ? .black : Color.black.opacity(0.45))
                            .fontWeight(self.top == 0 ? .bold : .none)
                            .padding(.vertical)
                    }
                    
//                    Spacer()
                    
                    Button {
                        self.top = 1
                    } label: {
                        Text("My Courses")
                            .foregroundColor(self.top == 0 ? .black : Color.black.opacity(0.45))
                            .fontWeight(self.top == 0 ? .bold : .none)
                            .padding(.vertical)                   }
                }
                .padding(.top, 50)
                
                Spacer()
                
                HStack{
                    
                    Spacer()
                    
                    VStack(spacing: 35){
                        
                        Button(action: {
                            
                        }) {
                            
                            VStack(spacing: 8){
                                
                                Image(systemName: "heart.circle.fill")
//                                    .renderingMode(.original)
                                    .font(.title)
                                    .foregroundColor(.black)
                                
                                Text("22K")
                                    .foregroundColor(.black)
                            }
                        }
                        
                        Button(action: {
                            
                        }) {
                            
                            VStack(spacing: 8){
                                
                                Image(systemName: "message.fill")
                                    .font(.title)
                                    .foregroundColor(.black)
                                
                                Text("1021")
                                    .foregroundColor(.black)
                            }
                        }
                        
                        Button(action: {
                            
                        }) {
                            
                            VStack(spacing: 8){
                                
                                Image(systemName: "arrowshape.turn.up.right.fill")
                                    .renderingMode(.original)
                                    .font(.title)
                                    .foregroundColor(.black)
                                
                                Text("Share")
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    .padding(.bottom, 55)
                    .padding(.trailing)
                }

//                .padding(.top, 48)
//                .padding(.horizontal, 24)
                
                
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
//        .padding(.horizontal)
        .background(Color.black.edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
