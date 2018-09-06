//
//  80. Remove Duplicates from Sorted Array II.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func removeDuplicates(_ nums: inout [Int]) -> Int {
    if nums.count == 0 { return 0 }
    var index = 0
    var count = 0
    var num = nums[0]-1
    for item in nums {
        if item != num  {
            nums[index] = item
            num = item
            index += 1
            count = 0
        } else if count != 2 {
            nums[index] = item
            index += 1
            count += 2
        }
    }
    return index
}
