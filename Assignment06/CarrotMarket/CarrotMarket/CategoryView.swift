//
//  CategoryView.swift
//  CarrotMarket
//
//  Created by 이창희 on 4/4/24.
//

import SwiftUI

struct Category:Hashable {
    
    let category: String
    let categoryIcon: String
    
}

struct CategoryView: View {
    
    let categories: [Category] = [
        
        Category(category: "전체", categoryIcon: "list.bullet"),
        Category(category: "알바", categoryIcon: "plus.magnifyingglass"),
        Category(category: "부동산", categoryIcon: "house"),
        Category(category: "중고차", categoryIcon: "car"),
        Category(category: "모임", categoryIcon: "person.2.fill"),
        Category(category: "나눔", categoryIcon: "person.line.dotted.person")
        
    ]
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(categories, id: \.self) { category in
                    
                    Button {
                        
                    } label: {
                        Image(systemName: category.categoryIcon)
                        Text(category.category)
                        
                    }
                    .frame(width: 80,height: 40)
                    .foregroundColor(.black)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.lightgray))
                    
                }
                .padding(3)
                
            }
            
        }
        .frame(height: 45)
        
        
    }
}

#Preview {
    CategoryView()
}
