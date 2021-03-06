//
//  120. Triangle.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/10.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func minimumTotal(_ triangle: [[Int]]) -> Int {
    if triangle.count == 0 { return 0 }
    var result = triangle
    for i in 0..<triangle.count {
        for j in 0..<i+1 {
            var path0 = Int.max
            if j != i {
                path0 = result[i-1][j]
            }
            var path1 = Int.max
            if j != 0 {
                path1 = result[i-1][j-1]
            }
            if i == 0 && j == 0 {
                result[i][j] = result[i][j]
            } else {
                result[i][j] = result[i][j] + min(path0, path1)
            }
        }
    }
    var array = result[result.count-1]
    array.sort()
    return array[0]
}

//func minimumTotal(_ triangle: [[Int]]) -> Int { // Wrong Answer
//    if triangle.count == 0 { return 0 }
//    var result = [Int]()
//    result.append(triangle[0][0])
//    var j = 0
//    for i in 1..<triangle.count {
//        result.append(result[i-1] + min(triangle[i][j], triangle[i][j+1]))
//        if triangle[i][j] > triangle[i][j+1] {
//            j += 1
//        }
//    }
//    return result[triangle.count-1]
//}
