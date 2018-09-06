//
//  66. Plus One.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func plusOne(_ digits: [Int]) -> [Int] {
    var last = digits.count-1
    var arr = digits
    arr[last] = digits[last] + 1
    while arr[last] >= 10 {
        arr[last] -= 10
        if last > 0 {
            last -= 1
            arr[last] += 1
        } else {
            arr.insert(1, at: 0)
        }
    }
    return arr
}
