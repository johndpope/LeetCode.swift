//
//  16. 3Sum Closest.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func threeSumClosest(_ nums: [Int], _ target: Int) -> Int { // Time Limit Exceeded
    var sum = 0
    var result = Int.max
    var i = 0
    var j = 1
    var k = 2
    while k < nums.count, j < k, i < j {
        if abs(nums[i]+nums[j]+nums[k] - target) < abs(result) {
            result = abs(nums[i]+nums[j]+nums[k] - target)
            sum = nums[i]+nums[j]+nums[k]
        }
        k += 1
        if k == nums.count {
            j += 1
            k = j+1
        }
        if j == nums.count-1 {
            i += 1
            j = i+1
            k = j+1
        }
    }
    return sum
}
