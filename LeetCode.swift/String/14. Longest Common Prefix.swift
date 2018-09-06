//
//  14. Longest Common Prefix.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
    if strs.count < 1 { return "" }
    let firstString = strs[0]
    for i in 0..<firstString.count {
        let prefix = firstString.prefix(firstString.count-i)
        var hasPrefix = true
        for string in strs {
            if !string.hasPrefix(String(prefix)) {
                hasPrefix = false
            }
        }
        if hasPrefix { return String(prefix) }
    }
    return ""
}
