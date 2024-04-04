//
//  myCalender.swift
//  Timetree
//
//  Created by 이창희 on 3/29/24.
//

import SwiftUI

struct myCalender: View {
    let day: [String] = ["월","화","수","목","금","토","일"]
    @State var dayIdx: Int = 0
    
    var body: some View {
        VStack {
           
            HStack{
                
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    .shadow(radius: 5)
                    .frame(height: 40)
                    
                
                VStack(alignment: .leading) {
                    Text("2024년 5월")
                        .font(.system(size: 20))
                        
                    Text("모든 캘린더")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                }
                
                Spacer()
                
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20)
                
            }
            
            Image("ad")
                .resizable()
                //.aspectRatio(contentMode: .fit)
                .frame(width: 400,height: 80)
            
            HStack {
                ForEach(day, id: \.self) { day in
                    Spacer()
                    Text(day)
                        .font(.system(size: 15))
                    Spacer()
                }
            }
            
            
            ForEach (0 ..< 5) { i in
                Divider()
                
                HStack (spacing: 2) {
                    ForEach (0 ..< 7) { j in
                        
                        Day(day: days[j + i * 7])
                        
                    }
                }
            }
            
            Spacer()
            
        }
        .padding()
        
    }

   
}

#Preview {
    myCalender()
}
