//
//  35. Search Insert Position.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    if nums.contains(target) {
        return nums.index(of: target)!
    }
    if target < nums[0] {
        return 0
    }
    if target > nums[nums.count-1] {
        return nums.count
    }
    for (index, item) in nums.enumerated() {
        if item < target && target < nums[index+1] {
            return index+1
        }
    }
    return 0
}
