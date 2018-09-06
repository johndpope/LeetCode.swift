//
//  27. Remove Element.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var count = 0
    for item in nums {
        if item != val {
            nums[count] = item
            count += 1
        }
    }
    return count
}

//func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
//    var count = 0
//    for item in nums {
//        if item != val {
//            count = count + 1
//        } else {
//            nums.remove(at: nums.index(of: item)!)
//        }
//    }
//    return count
//}
