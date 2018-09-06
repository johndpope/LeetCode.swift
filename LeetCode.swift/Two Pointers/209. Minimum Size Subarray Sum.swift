//
//  209. Minimum Size Subarray Sum.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func minSubArrayLen(_ s: Int, _ nums: [Int]) -> Int {
    var l = 0
    var r = -1
    var sum = 0
    var res = nums.count+1
    while l < nums.count {
        if sum < s {
            r += 1
            if r+1 < nums.count {
                sum += nums[r]
            }
        } else {
            l += 1
            if l+1 < nums.count {
                sum -= nums[l]
            }
        }
        if sum >= s {
            res = min(res, r-l+1)
        }
    }
    if res == nums.count+1 { return 0 }
    return res
}

//209  Time Limit Exceeded
//func minSubArrayLen(_ s: Int, _ nums: [Int]) -> Int {
//    var count = 0
//    var l = 0
//    while l + count < nums.count {
//        let array = Array(nums[l...l+count])
//        var sum = 0
//        for item in array {
//            sum += item
//            if sum >= s {
//                return array.count
//            }
//        }
//        l += 1
//        if l + count == nums.count {
//            count += 1
//            l = 0
//        }
//    }
//    if nums.count == 1 && nums[0] == s { return 1 }
//    return 0
//}
