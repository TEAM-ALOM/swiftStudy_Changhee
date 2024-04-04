//
//  ListScroll.swift
//  CarrotMarket
//
//  Created by 이창희 on 4/4/24.
//

import SwiftUI

struct ListScroll: View {
    
    var body: some View {
        
        ZStack{
            
            ScrollView(showsIndicators: false){
                
                VStack(spacing:5){
                    Spacer()
                    CategoryView()
                    Spacer()
                    ForEach(content, id: \.self) { ct in
                        Spacer()
                        ListView(cont:ct)
                        
                        Divider()
                            .frame(width: 370)
                       
                    }
                }
            }
            
            Button {
                
            } label: {
                Text("+ 글쓰기")
            }
            .frame(width: 100,height: 50)
            .foregroundColor(.white)
            .background(.carrot)
            .cornerRadius(25)
            .offset(x: 130, y:280)

            
        }
    
        
        
        
        
    }
}

#Preview {
    ListScroll()
}
