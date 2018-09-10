//
//  88. Merge Sorted Array.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    if n == 0 { return }
    if m == 0 { nums1 = nums2; return }
    var array = [Int]()
    for index in 0..<m {
        array.append(nums1[index])
    }
    var i = 0
    var j = 0
    while i <= m && j <= n {
        if i == m {
            for k in j..<n {
                nums1[i+k] = nums2[k]
            }
            return
        }
        if j == n {
            for k in i..<m {
                nums1[j+k] = array[k]
            }
            return
        }
        //
        if array[i] < nums2[j] {
            nums1[i+j] = array[i]
            i += 1
        } else {
            nums1[i+j] = nums2[j]
            j += 1
        }
    }
}
