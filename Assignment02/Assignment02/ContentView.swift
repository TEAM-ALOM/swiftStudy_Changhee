//
//  ContentView.swift
//  Assignment02
//
//  Created by 이창희 on 3/1/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var img: String? = nil
    @State var name: String? = nil
    
    var body: some View {
        
        VStack{
            
            if let name = name {
                
                Text("선택된 항목은 \(name)입니다.")
            }
            
            if let img = img {
            
                Image(img)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250)
            }
            
            HStack{
                
                Button {
                    img = "scissors"
                    name = "가위"
                } label: {
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.red)
                            .frame(width: 100,height: 100)
                        
                        Text("가위")
                            .foregroundStyle(.white)
                    }
                }

                Button {
                    img = "rock"
                    name = "바위"
                } label: {
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.blue)
                            .frame(width: 100,height: 100)
                        
                        Text("바위")
                            .foregroundStyle(.white)
                    }
                }
                
                Button {
                    img = "paper"
                    name = "보"
                } label: {
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.yellow)
                            .frame(width: 100,height: 100)
                        
                        Text("보")
                            .foregroundStyle(.white)
                    }
                }
            }
            
            Button {
                img = nil
                name = nil
            } label: {
                
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.green)
                        .frame(width: 300,height: 100)
                    
                    Text("그만하기")
                        .foregroundStyle(.white)
                }
            }

        }
                
    }
}

struct ContentView_previews : PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}
