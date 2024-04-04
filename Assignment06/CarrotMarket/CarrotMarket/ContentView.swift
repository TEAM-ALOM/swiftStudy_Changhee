//
//  ContentView.swift
//  CarrotMarket
//
//  Created by 이창희 on 4/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            TabView{
                TotalView()
                    .tabItem {
                        Label("홈", systemImage: "house")
                    }
                Text("동네생활")
                    .tabItem {
                        Label("동네생활", systemImage: "newspaper")
                    }
                        
                Text("내 근처")
                    .tabItem {
                        Label("내 근처", systemImage: "mappin.and.ellipse.circle")
                    }
                    
                Text("채팅")
                    .tabItem {
                        Label("채팅", systemImage: "message")
                    }
                Text("나의 당근")
                    .tabItem {
                        Label("나의 당근", systemImage: "person")
                    }
                        
            }
            .accentColor(.black)
                      
            
        }
        .padding(1)
    }
}

#Preview {
    ContentView()
}
