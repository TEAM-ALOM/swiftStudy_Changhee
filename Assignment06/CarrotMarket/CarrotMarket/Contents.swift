//
//  Contents.swift
//  CarrotMarket
//
//  Created by 이창희 on 4/4/24.
//

import Foundation

struct Contents:Hashable {
    
    let Image: String
    let title: String
    let region: String
    let price: Int
    let chat: Int
    let heart: Int
    let category: String
    
}

let content: [Contents] = [
    Contents(Image: "addidas", title: "아디다스 스페지알 핑크", region: "옥수동", price: 120000, chat: 2, heart: 4, category: "상품"),
    Contents(Image: "coin", title: "88서울 올림픽 기념 주화", region: "신갈동", price: 500000, chat: 0, heart: 0, category: "상품"),
    Contents(Image: "work", title: "동백 벌툰에서 일하실 분 구해요~~", region: "동백", price: 10000, chat: 20, heart: 51, category: "알바"),
    Contents(Image: "car", title: "벤틀리 팝니다....", region: "옥수동", price: 300000000, chat: 2, heart: 12, category: "중고차"),
    Contents(Image: "guitar", title: "일렉기타 급처합니다~~!", region: "기흥", price: 190000, chat: 2, heart: 1, category: "상품"),
    Contents(Image: "movie", title: "썬 4/7 19:45분 영화 티켓 양도", region: "옥수동", price: 12000, chat: 1, heart: 2, category: "상품"),
    Contents(Image: "starbucks", title: "스벅 깊티 나눔합니다 ㅎㅎ", region: "화양동", price: 0, chat: 0, heart: 0, category: "나눔")
    
]
