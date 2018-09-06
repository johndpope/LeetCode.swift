//
//  167. Two Sum II - Input array is sorted.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var i = 0
    var j = nums.count-1
    while i < j {
        if nums[i] + nums[j] == target {
            return [i+1, j+1]
        } else if nums[i] + nums[j] < target {
            i += 1
        } else {
            j -= 1
        }
    }
    return [0, 0]
}
