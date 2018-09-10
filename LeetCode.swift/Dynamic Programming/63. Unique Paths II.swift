//
//  63. Unique Paths II.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/10.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
    var result = [[Int]]()
    let n = obstacleGrid.count
    let m = obstacleGrid[0].count
    for _ in 0..<n {
        var array = [Int]()
        for _ in 0..<m {
            array.append(0)
        }
        result.append(array)
    }
    for i in 0..<n {
        for j in 0..<m {
            var up = 0
            if i >= 1 {
                up = result[i-1][j]
            }
            var left = 0
            if j >= 1 {
                left = result[i][j-1]
            }
            if i == 0 && j == 0 {
                result[i][j] = (obstacleGrid[i][j] == 1) ? 0:1
            } else {
                result[i][j] = (obstacleGrid[i][j] == 1) ? 0:up + left
            }
        }
    }
    return result[n-1][m-1]
}
