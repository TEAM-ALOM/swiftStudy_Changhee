//
//  TotalView.swift
//  CarrotMarket
//
//  Created by 이창희 on 4/4/24.
//

import SwiftUI

struct TotalView: View {
    var body: some View {
        
        VStack(spacing:0){
            
            HStack{
                
                Text("신갈동")
                    .font(.title)
                    .bold()
                
                Spacer()
                
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25)
                    .padding()
                
                Image(systemName: "bell")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25)
                
                
            }
            Spacer()
            Divider()
           
                
            ListScroll()
            
            
        }
    }
        
}

#Preview {
    TotalView()
}
