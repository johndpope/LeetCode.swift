//
//  64. Minimum Path Sum.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/10.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func minPathSum(_ grid: [[Int]]) -> Int {
    if grid.count == 0 { return 0 }
    var result = grid
    for i in 0..<grid.count {
        for j in 0..<grid[i].count {
            var up = Int.max
            if i != 0 {
                up = result[i-1][j]
            }
            var left = Int.max
            if j != 0 {
                left = result[i][j-1]
            }
            if i == 0 && j == 0 {
                result[i][j] = result[i][j]
            } else {
                result[i][j] = result[i][j] + min(up, left)
            }
        }
    }
    return result[grid.count-1][grid[0].count-1]
}

//func minPathSum(_ grid: [[Int]]) -> Int { // Time Limit Exceeded
//    if grid.count == 0 || grid[0].count == 0 {
//        return Int.max
//    }
//    if grid.count == 1, grid[0].count == 1 {
//        return grid[0][0]
//    }
//    var downArray = grid
//    downArray.removeFirst()
//    var rightArray = [[Int]]()
//    for i in 0..<grid.count {
//        var array = grid[i]
//        array.remove(at: 0)
//        rightArray.append(array)
//    }
//    return grid[0][0] + min(minPathSum(downArray), minPathSum(rightArray))
//}
