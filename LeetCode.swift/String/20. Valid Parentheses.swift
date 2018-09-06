//
//  20. Valid Parentheses.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func isValid(_ s: String) -> Bool {
    if s.count == 0 { return true }
    if s.count % 2 != 0 { return false }
    let lefts = ["(", "{", "["]
    let rights = [")", "}", "]"]
    var arr = [String]()
    for char in s {
        if lefts.contains("\(char)") {
            arr.append("\(char)")
        } else if rights.contains("\(char)") {
            if arr.last == lefts[rights.index(of: "\(char)")!] {
                arr.removeLast()
            } else {
                return false
            }
        }
    }
    return arr.count == 0 ? true:false
}
