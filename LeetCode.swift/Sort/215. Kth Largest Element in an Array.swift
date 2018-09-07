//
//  215. Kth Largest Element in an Array.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/7.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
    var array = nums.sorted()
    array = array.reversed()
    return array[k-1]
}

//func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
//    var set = Set<Int>.init()
//    for num in nums {
//        set.update(with: num)
//    }
//    var array = Array.init(set)
//    array.sort(by: { $0 > $1 })
//    return array[k-1]
//}
