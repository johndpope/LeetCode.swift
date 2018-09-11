//
//  343. Integer Break.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/11.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

// memo[n]:break it into the sum of at least two positive integers and maximize the product of those integers
func integerBreak(_ n: Int) -> Int {
    var memo = [0, 1]
    for i in 2...n {
        var maximum = 0
        for j in 1...i-1 {
            maximum = max(maximum, max(j*(i-j), j*memo[i-j]))
        }
        memo.append(maximum)
    }
    return memo[n]
}

//func integerBreak(_ n: Int) -> Int {
//    if n <= 2 { return 1 }
//    var maximum = n-1
//    for i in 2..<n {
//        let product = integerBreak(n-i)
//        maximum = max(maximum, product*i)
//    }
//    return maximum
//}
