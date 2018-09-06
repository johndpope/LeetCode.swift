//
//  220. Contains Duplicate III.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

//220 Time Limit Exceeded
func containsNearbyAlmostDuplicate(_ nums: [Int], _ k: Int, _ t: Int) -> Bool {
    var set = Set<Int>.init()
    for i in 0..<nums.count {
        for item in set {
            if abs(nums[i]-item) <= t {
                return true
            }
        }
        set.insert(nums[i])
        if set.count == k+1 {
            set.remove(nums[i-k])
        }
    }
    return false
}
