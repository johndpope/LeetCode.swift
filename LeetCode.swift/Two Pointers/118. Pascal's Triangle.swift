//
//  118. Pascal's Triangle.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/7.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func generate(_ numRows: Int) -> [[Int]] {
    if numRows == 0 { return [] }
    var result = [[Int]]()
    for i in 0..<numRows {
        var array = [Int]()
        for j in 0..<i+1 {
            if j == 0 || j == i {
                array.append(1)
            } else {
                let num = result[i-1][j] + result[i-1][j-1]
                array.append(num)
            }
        }
        result.append(array)
    }
    return result
}
