//
//  378. Kth Smallest Element in a Sorted Matrix.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/11.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func kthSmallest(_ matrix: [[Int]], _ k: Int) -> Int {
    if matrix.count == 0 { return 0 }
    if matrix.first?.count == 0 { return 0 }
    var result = [Int]()
    for array in matrix {
        for item in array {
            result.append(item)
        }
    }
    result.sort()
    return result[k-1]
}
