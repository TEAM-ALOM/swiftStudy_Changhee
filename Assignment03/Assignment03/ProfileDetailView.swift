//
//  ProfileDetailView.swift
//  Assignment03
//
//  Created by 이창희 on 3/6/24.
//

import SwiftUI

struct ProfileDetailView: View {
    
    var person: Person
    
    var body: some View {
        
        ZStack {
            
            LinearGradient(
                colors: [Color.skyblue,Color.white], startPoint: .top, endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack {
        
                ZStack {
                    
                    Circle()
                        .fill(Color.whiteGray)
                        .frame(width: 300)
                    
                    Text(person.imageName)
                        .font(.system(size: 180))
                    
                }
                .padding(20)
                
                
                Text(person.name)
                    .font(.system(size: 50))
                    .bold()
                    
                
                Button {
                    print(person.number)
                } label: {
                    Text(person.number)
                        .frame(width: 350, height: 50)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        
                }
                Spacer()

            }
            
                
        }
        
        
    }
    
}

#Preview {
    ProfileDetailView(person: my)
}


