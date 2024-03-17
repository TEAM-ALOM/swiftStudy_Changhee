//
//  ContentView.swift
//  Assignment04_Chapter1
//
//  Created by 이창희 on 3/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
