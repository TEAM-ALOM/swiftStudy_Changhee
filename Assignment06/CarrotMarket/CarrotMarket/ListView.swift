//
//  ListView.swift
//  CarrotMarket
//
//  Created by 이창희 on 4/4/24.
//

import SwiftUI

struct ListView: View {
    
    var cont: Contents
    
    var body: some View {
        
        VStack{
            HStack(alignment:.top, spacing: 5){
            
                Image(cont.Image)
                    .resizable()
                    .frame(maxWidth: 130, maxHeight: 130)
                    .cornerRadius(15)
                    .padding(.bottom, 20)
                    .aspectRatio(contentMode: .fill)
                    
                VStack(alignment:.leading){
                    Text(cont.title)
                        .font(.system(size: 20))
                    Text(cont.region)
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                    
                    if cont.price == 0 {
                        Text("나눔")
                            .bold()
                           
                    }
                    else{
                        Text("\(cont.price)원")
                            .bold()
                       
                    }
                    Spacer()
                
                    HStack{
                        Spacer()
                        
                        Image(systemName: "message")
                        Text(cont.chat.description)
                        
                        Image(systemName: "heart")
                        Text(cont.heart.description)
                        
                    }
                
                   
                }
                
                Spacer()
                
            }
            
            
        }
        .frame(height: 140)
        
    }
}

#Preview {
    ListView(cont: content[0])
}
