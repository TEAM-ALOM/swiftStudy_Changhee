//
//  Contacts.swift
//  Assignment03
//
//  Created by 이창희 on 3/6/24.
//

import Foundation

struct Person: Hashable {
    let name: String
    let number: String
    let imageName: String
}

var contacts: [Person] = [
    Person(name: "김도형", number: "010-9027-8292", imageName:"😄"),
    Person(name: "김학규", number: "010-9114-5176", imageName:"😁"),
    Person(name: "박근경", number: "010-2841-5753", imageName:"😬"),
    Person(name: "은서우", number: "010-2874-3502", imageName:"😝"),
    Person(name: "이하빈", number: "010-4740-6363", imageName:"😳"),
    Person(name: "이창희", number: "010-6609-5465", imageName:"😎"),
    Person(name: "정성윤", number: "010-8504-6852", imageName:"😅"),
    Person(name: "정수호", number: "010-7535-0604", imageName:"🥸"),
    Person(name: "황은지", number: "010-3005-0165", imageName:"😑"),
]

var my: Person = contacts[5]
