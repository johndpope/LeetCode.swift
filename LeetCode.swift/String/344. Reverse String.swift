//
//  344. Reverse String.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func reverseString(_ s: String) -> String {
    var arr = Array(s)
    var l = 0
    var r = s.count-1
    while l < r {
        arr.swapAt(l, r)
        l += 1
        r -= 1
    }
    return String(arr)
}
