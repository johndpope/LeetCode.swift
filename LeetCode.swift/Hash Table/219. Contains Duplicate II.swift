//
//  219. Contains Duplicate II.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
    var set = Set<Int>.init()
    for i in 0..<nums.count {
        if set.contains(nums[i]) {
            return true
        } else {
            set.insert(nums[i])
        }
        if set.count == k+1 {
            set.remove(nums[i-k])
        }
    }
    return false
}
