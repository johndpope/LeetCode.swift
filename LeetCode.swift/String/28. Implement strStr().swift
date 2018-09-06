//
//  28. Implement strStr().swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

//28 Time Limit Exceeded
func strStr(_ haystack: String, _ needle: String) -> Int {
    if needle == "" { return 0 }
    if haystack == "" { return -1 }
    var strig = ""
    for i in 0..<haystack.count {
        if haystack[haystack.index(haystack.startIndex, offsetBy: i)] == needle[needle.startIndex] {
            strig = haystack
            strig.removeFirst(i)
            if strig.hasPrefix(needle) { return i }
        }
    }
    return -1
}
