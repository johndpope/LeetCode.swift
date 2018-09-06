//
//  345. Reverse Vowels of a String.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func reverseVowels(_ s: String) -> String {
    let set = Set(arrayLiteral: "a", "e", "i", "o", "u", "A", "E", "I", "O", "U")
    var arr = Array(s)
    var l = 0
    var r = s.count-1
    while l < r {
        if set.contains("\(arr[l])") && set.contains("\(arr[r])") {
            arr.swapAt(l, r)
            l += 1
            r -= 1
        }
        if !set.contains("\(arr[l])") {
            l += 1
        }
        if !set.contains("\(arr[r])") {
            r -= 1
        }
    }
    return String(arr)
}
