//
//  ContentView.swift
//  Assignment01
//
//  Created by 이창희 on 2/23/24.
//

import SwiftUI

struct IOS : Hashable{
    
    let name: String
    let position: MyPosition
}

enum MyPosition{
    
    case leadmentor
    case mentor
    case mentee
    
    var emoji: String{
        if self == MyPosition.leadmentor{
            return "🚗"
        }
        else if self == MyPosition.mentor{
            return "🚕"
        }
        else {
            return "🚙"
        }
    }
}

struct ContentView: View {
    
    let alom: [IOS] = [
        IOS(name:"창희", position: .mentee),
        IOS(name:"도형", position: .leadmentor),
        IOS(name:"성윤", position: .leadmentor),
        IOS(name:"서우", position: .mentor),
        IOS(name:"근경", position: .mentor),
        IOS(name:"학규", position: .mentee),
        IOS(name:"수호", position: .mentee),
        IOS(name:"은지", position: .mentee),
        IOS(name:"하빈", position: .mentee),
    ]
    
    var body: some View {
        
        List {
            ForEach(alom, id: \.self) { people in
                Text("\(people.position.emoji) \(people.name)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}
