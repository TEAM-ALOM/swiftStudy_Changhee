//
//  ContactView.swift
//  Assignment03
//
//  Created by 이창희 on 3/6/24.
//

import SwiftUI

struct ContactView: View {
    
    @State var inputName: String = ""
//    var searchList: [Person] {
//        if inputName == "" {
//           return contacts
//        }
//        else {
//            return contacts.filter { Person in
//                Person.name == inputName
//            }
//        }
//    }
    
    var searchList: [Person] {  //자동완성
        if inputName.isEmpty{
            return contacts
        }
        else {
            return contacts.filter { ($0.name.contains(inputName))}
        
        }
    }
    
    
    
    var body: some View {
        
        
        NavigationStack {
            
            HStack{
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20)
                    .foregroundColor(.gray)
                    .padding(.leading)
                
                TextField("검색...", text: $inputName)
                    
                    
            }
            .frame(height: 35)
            .background(.whiteGray)
            .cornerRadius(10)
            .padding(5)
            
            List {
                
                NavigationLink {
                    ProfileDetailView(person: my)
                } label: {
                    ProfileView(imageName: my.imageName, name: my.name)
                }

                
                ForEach(searchList.filter({ ME in
                    ME != my
                }), id: \.self) { people in
                    
                    NavigationLink {
                        ProfileDetailView(person: people)
                    } label: {
                        Text(people.name)
                    }
                }
                
            }
            .listStyle(.plain)
            .navigationTitle("연락처")
                
        }
        
       
        
    }
}

#Preview {
    ContactView()
}
