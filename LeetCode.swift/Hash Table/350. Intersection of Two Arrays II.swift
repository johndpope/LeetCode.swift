//
//  350. Intersection of Two Arrays II.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var dictionary = [Int: Int]()
    for num in nums1 {
        let value = dictionary[num] ?? 0
        dictionary.updateValue(value+1, forKey: num)
    }
    var array = [Int]()
    for num in nums2 {
        let value = dictionary[num] ?? 0
        if (value != 0) {
            array.append(num)
            dictionary.updateValue(value-1, forKey: num)
        }
    }
    return array
}
