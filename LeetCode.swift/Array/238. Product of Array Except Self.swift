//
//  238. Product of Array Except Self.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/7.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func productExceptSelf(_ nums: [Int]) -> [Int] {
    var product = 1
    var set0 = Set<Int>.init()
    for (i, num) in nums.enumerated() {
        if num != 0 {
            product *= num
        } else {
            set0.update(with: i)
        }
    }
    var result = [Int]()
    for (i, num) in nums.enumerated() {
        var set = set0
        set.remove(i)
        if set.count > 0 {
            result.append(0)
        } else {
            if num == 0 {
                result.append(product/1)
            } else {
                result.append(product/num)
            }
        }
    }
    return result
}

//func productExceptSelf(_ nums: [Int]) -> [Int] { //Time Limit Exceeded
//    var product = 1
//    for num in nums {
//        if num != 0 {
//            product *= num
//        }
//    }
//    var result = [Int]()
//    var array = [Int]()
//    for (i, num) in nums.enumerated() {
//        array = nums
//        array.remove(at: i)
//        if array.contains(0) {
//            result.append(0)
//        } else {
//            if num == 0 {
//                result.append(product/1)
//            } else {
//                result.append(product/num)
//            }
//        }
//    }
//    return result
//}
