//
//  ContentView.swift
//  Assignment03
//
//  Created by 이창희 on 3/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView{
            
            ContactView()
            
            .tabItem {
                Label("연락처", systemImage: "person.circle.fill")
            }
            
            Text("키패드 화면")
            .tabItem {
                Label("키패드", systemImage: "circle.grid.3x3.fill")
            }
            
        }
        
        
    }
}

struct ContentView_previews: PreviewProvider{
    static var previews: some View {
        ContentView()
    }
}
