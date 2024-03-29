//
//  DaySetting.swift
//  Timetree
//
//  Created by 이창희 on 3/29/24.
//

import Foundation


struct DaySetting: Hashable{
    
    var today:Int
    var isHoliday:Bool
    var content: [String]
    var contentColor: [Int]
    
    //빨강 1
    //회색 2
    //파랑 3
    //초록 4
}


var days: [DaySetting] = [
    
    DaySetting(today: 28, isHoliday: true, content: [], contentColor: []),
    DaySetting(today: 29, isHoliday: false, content: ["월세"], contentColor: [2]),
    DaySetting(today: 30, isHoliday: false, content: [], contentColor: []),
    
    DaySetting(today: 1, isHoliday: true, content: ["근로자의 날"], contentColor: [1]),
    DaySetting(today: 2, isHoliday: false, content: [], contentColor: []),
    DaySetting(today: 3, isHoliday: false, content: [], contentColor: []),
    DaySetting(today: 4, isHoliday: false, content: [], contentColor: []),
    DaySetting(today: 5, isHoliday: true, content: ["어린이날", "우리 적금"], contentColor: [1,2]),
    DaySetting(today: 6, isHoliday: true, content: ["대체 휴일"], contentColor: [1]),
    DaySetting(today: 7, isHoliday: false, content: [], contentColor: []),
    DaySetting(today: 8, isHoliday: false, content: ["어버이날"], contentColor: [1]),
    DaySetting(today: 9, isHoliday: false, content: [], contentColor: []),
    DaySetting(today: 10, isHoliday: false, content: [], contentColor: []),
    DaySetting(today: 11, isHoliday: false, content: [], contentColor: []),
    DaySetting(today: 12, isHoliday: true, content: [], contentColor: []),
    DaySetting(today: 13, isHoliday: false, content: [], contentColor: []),
    DaySetting(today: 14, isHoliday: false, content: [], contentColor: []),
    DaySetting(today: 15, isHoliday: true, content: ["석가탄신일","스승의날"], contentColor: [1,3]),
    DaySetting(today: 16,isHoliday: false, content: [], contentColor: []),
    DaySetting(today: 17, isHoliday: false, content: [], contentColor: []),
    DaySetting(today: 18, isHoliday: false, content: [], contentColor: []),
    DaySetting(today: 19, isHoliday: true, content: [], contentColor: []),
    DaySetting(today: 20, isHoliday: false, content: [], contentColor: []),
    DaySetting(today: 21, isHoliday: false, content: [], contentColor: []),
    DaySetting(today: 22, isHoliday: false, content: [], contentColor: []),
    DaySetting(today: 23, isHoliday: false, content: [], contentColor: []),
    DaySetting(today: 24, isHoliday: false, content: [], contentColor: []),
    DaySetting(today: 25, isHoliday: false, content: [], contentColor: []),
    DaySetting(today: 26, isHoliday: true, content: [], contentColor: []),
    DaySetting(today: 27, isHoliday: false, content: [], contentColor: []),
    DaySetting(today: 28, isHoliday: false, content: [], contentColor: []),
    DaySetting(today: 29, isHoliday: false, content: ["월세"], contentColor: [2]),
    DaySetting(today: 30, isHoliday: false, content: [], contentColor: []),
    DaySetting(today: 31, isHoliday: false, content: [], contentColor: []),

    DaySetting(today: 1, isHoliday: false, content: [], contentColor: []),
    

]
