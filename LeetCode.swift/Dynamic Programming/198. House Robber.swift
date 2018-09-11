//
//  198. House Robber.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/11.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func rob(_ nums: [Int]) -> Int {
    if nums.count == 0 { return 0 }
    let n = nums.count
    var memo = Array.init(repeating: 0, count: n)
    memo[n-1] = nums[n-1]
    for i in (0..<n-1).reversed() {
        var maximum = 0
        for j in i..<n-1 {
            let sum0 = j+2 > n-1 ? 0:memo[j+2]
            let sum1 = j+1 > n-1 ? 0:memo[j+1]
            maximum = max(maximum, max(nums[j]+sum0, sum1))
        }
        memo[i] = maximum
    }
    return memo[0]
}
