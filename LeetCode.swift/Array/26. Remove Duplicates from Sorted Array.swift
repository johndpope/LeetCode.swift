//
//  26. Remove Duplicates from Sorted Array.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func removeDuplicates(_ nums: inout [Int]) -> Int {
    if nums.count == 0 { return 0 }
    var index = 0
    var num = nums[0]-1
    for item in nums {
        if item != num {
            nums[index] = item
            num = item
            index += 1
        }
    }
    return index
}

//func removeDuplicates(_ nums: inout [Int]) -> Int {
//    if nums.count == 0 { return 0 }
//    for (index, item) in nums.enumerated() {
//        if index < nums.count-2 && item == nums[index+1] {
//            nums.remove(at: index)
//        }
//    }
//    return nums.count
//}
