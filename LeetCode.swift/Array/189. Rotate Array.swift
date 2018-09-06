//
//  189. Rotate Array.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func rotate(_ nums: inout [Int], _ k: Int) {
    let count = nums.count
    guard k > 0 else { return }
    guard k >= nums.count else {
        nums.append(contentsOf: Array(nums[0...nums.count-1-k]))
        nums = Array(nums[nums.count-count...nums.count-1])
        return
    }
    for index in 1...k {
        nums.insert(nums[nums.count-index], at: 0)
    }
    nums = Array(nums[0...count-1])
}

//func rotate(_ nums: inout [Int], _ k: Int) {
//    guard nums.count > 1 else { return }
//    nums.append(contentsOf: nums[0...nums.count-1-k])
//    nums.removeFirst(nums.count-1-k)
//}
