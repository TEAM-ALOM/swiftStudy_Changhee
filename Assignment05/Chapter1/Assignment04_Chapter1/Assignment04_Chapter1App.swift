//
//  Assignment04_Chapter1App.swift
//  Assignment04_Chapter1
//
//  Created by 이창희 on 3/17/24.
//

import SwiftUI

@main
struct Assignment04_Chapter1App: App {
    
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
