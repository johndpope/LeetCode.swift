//
//  169. Majority Element.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func majorityElement(_ nums: [Int]) -> Int {
    var elements = [Int: Int]()
    var value = 0
    for num in nums {
        value = elements[num] ?? 0
        elements.updateValue(value+1, forKey: num)
    }
    var count = 0
    var majority = 0
    for key in elements.keys {
        if elements[key]! > count {
            count = elements[key]!
            majority = key
        }
    }
    return majority
}
