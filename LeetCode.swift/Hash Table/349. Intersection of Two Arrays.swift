//
//  349. Intersection of Two Arrays.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var set = Set.init(nums1)
    var arr = [Int]()
    for num in nums2 {
        if set.contains(num) {
            arr.append(num)
            set.remove(num)
        }
    }
    return arr
}
