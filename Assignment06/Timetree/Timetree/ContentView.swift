//
//  ContentView.swift
//  Timetree
//
//  Created by 이창희 on 3/29/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        TabView{
                    
            myCalender()
                .tabItem {
                    Label("일정", systemImage: "calendar")
                }
            Text("메모")
                .tabItem {
                    Label("메모", systemImage: "square.and.pencil")
                }
                    
            Text("작성")
                .tabItem {
                    Label("작성", systemImage: "plus.circle.fill")
                }
                
            Text("알림")
                .tabItem {
                    Label("알림", systemImage: "bell")
                }
            Text("설정")
                .tabItem {
                    Label("설정", systemImage: "slider.horizontal.3")
                }
                    
        }
        .accentColor(.tabView)
                
        
    }
}

#Preview {
    ContentView()
}
