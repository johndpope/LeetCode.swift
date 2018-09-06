//
//  682. Baseball Game.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func calPoints(_ ops: [String]) -> Int {
    var arr = [Int]()
    for round in ops {
        if Int(round) == nil {
            switch round {
            case "+": arr.append(arr.last!+arr[arr.count-2])
            case "D": arr.append(arr.last!*2)
            case "C": arr.removeLast()
            default: break
            }
        } else {
            arr.append(Int(round)!)
        }
    }
    return arr.reduce(0, +)
}
