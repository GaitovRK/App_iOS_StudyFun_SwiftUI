//
//  ProfileView.swift
//  StudyFun_SwiftUI
//
//  Created by Rashid Gaitov on 02.11.2023.
//

import SwiftUI

struct ProfileView: View {
    var name: String = "Rashid Gaitov"
    var email: String = "rashidgaitov@gmail.com"
    
    var body: some View {
        List {
            
            Section {
                HStack {
                    Text("RG")
                        .font(.title)
                        .fontWeight(.semibold)
                        .frame(width: 72, height: 72)
                        .foregroundColor(.white)
                        .background(Color(.systemGray3))
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text(name)
                            .font(.headline)
                            .fontWeight(.semibold)
                            .padding(.top, 4)
                        Text(email)
                            .font(.subheadline)
                    }
                }
            }
            
            Section {
                HStack(spacing: 14) {
                    
                    Image(systemName: "xmark.circle.fill")
                        .font(.system(size: 18))
                        .foregroundColor(.red)
                    
                    Text("Sign Out")
                }
                
                HStack(spacing: 14) {
                    
                    Image(systemName: "person.circle.fill")
                        .font(.system(size: 18))
                        .foregroundColor(.gray)
                    
                    Text("Change Account")
                }
            }
            
            Section {
                
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
