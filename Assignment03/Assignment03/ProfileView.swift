//
//  ProfileView.swift
//  Assignment03
//
//  Created by 이창희 on 3/6/24.
//

import SwiftUI

struct ProfileView: View {
    
    var imageName: String
    var name: String
    
    var body: some View {
        
        VStack{
            
            HStack{
                
                ZStack{
                    
                    Circle()
                        .fill(Color.whiteGray)
                        .frame(width: 60)
                    Text(imageName)
                        .font(.system(size: 40))
                }
                
                VStack(alignment: .leading) {
                    
                    Text(name)
                        .font(.system(size: 25))
                        .bold()
                    
                    Text("프로필 보기")
                        .font(.system(size: 10))
                        .foregroundColor(.gray)
                }
                Spacer()
                
            }
            
        }
        
    }
}



#Preview {
    ProfileView(imageName: "😎", name: "이창희")
}
