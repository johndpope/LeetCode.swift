//
//  240. Search a 2D Matrix II.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/11.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    if matrix.count == 0 { return false }
    if matrix.first?.count == 0 { return false }
    var rows = [[Int]]()
    for item in matrix { // Divide and Conquer
        if target >= item.first! && target <= item.last! {
            rows.append(item)
        }
    }
    for item in rows { // Binary Search
        var l = 0
        var r = item.count-1
        while l <= r {
            let mid = (l+r)/2
            let value = item[mid]
            if value == target {
                return true
            } else if value > target {
                r = mid - 1
            } else {
                l = mid + 1
            }
        }
    }
    return false
}
