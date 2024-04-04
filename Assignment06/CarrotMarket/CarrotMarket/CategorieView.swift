//
//  CategorieView.swift
//  CarrotMarket
//
//  Created by 이창희 on 4/4/24.
//

import SwiftUI

struct CategorieView: View {
    
    let categories:[String] = ["전체","알바","부동산","중고차","모임"]
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false){
            
            HStack{
                
                ForEach(categories, id: \.self) { categorie}
                
                
            }
            
        }
        
        ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(categories, id: \.self) { category in
                            CategoryButton(categoryName: category, isSelected: category == selectedCategory, action: {
                                selectedCategory = category
                            })
                        }
                    }
                    .padding()
                }
        
    }
}

#Preview {
    CategorieView()
}
