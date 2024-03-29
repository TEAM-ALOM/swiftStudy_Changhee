//
//  Day.swift
//  Timetree
//
//  Created by 이창희 on 3/29/24.
//

import SwiftUI


struct Day: View {
    
    @State var isModal: Bool = false
    var day:DaySetting
    
    var body: some View {
        
        VStack {
            
            Button {
                isModal = true
                
            } label: {
                
                VStack(spacing: 2) {
                
                    if day.isHoliday == true {
                        Text(day.today.description)
                            .foregroundColor(.red)
                            .font(.system(size: 13))
                    }
                    
                    else {
                        Text(day.today.description)
                            .foregroundColor(.black)
                            .font(.system(size: 13))
                    }
                    
                    
                    ForEach(0 ..< day.content.count) { i in
                        
                        if day.contentColor[i] == 1{
                            Text(day.content[i])
                                .frame(width: 50, height: 15, alignment: .center)
                                .background(RoundedRectangle(cornerRadius: 3).fill(Color.myRed))
                                .foregroundColor(.white)
                                .font(.system(size: 10))
                        }
                        else if  day.contentColor[i] == 2{
                            Text(day.content[i])
                                .frame(width: 50, height: 15, alignment: .center)
                                .background(RoundedRectangle(cornerRadius: 3).fill(Color.myGray))
                                .foregroundColor(.white)
                                .font(.system(size: 10))
                        }
                        else if  day.contentColor[i] == 3 {
                            Text(day.content[i])
                                .frame(width: 50, height: 15, alignment: .center)
                                .background(RoundedRectangle(cornerRadius: 3).fill(Color.myBlue))
                                .foregroundColor(.white)
                                .font(.system(size: 10))
                        }
                        
                        else{
                            Text(day.content[i])
                                .frame(width: 50, height: 15, alignment: .center)
                                .background(RoundedRectangle(cornerRadius: 3).fill(Color.myGreen))
                                .foregroundColor(.white)
                                .font(.system(size: 10))
                        }
                        
                    }
                    
                    Spacer()
                    
                }
                .frame(width: 50, height: 90)
                
                
    
                
            }
            .sheet(isPresented: $isModal) {
                Text("모달창")
                
            }
            
        }
        
    }
}


#Preview {
    Day(day: days[7])
}
