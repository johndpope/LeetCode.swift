//
//  290. Word Pattern.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func wordPattern(_ pattern: String, _ str: String) -> Bool {
    let arr = str.split { $0 == " " }
    if pattern.count != arr.count { return false }
    var dict = [Substring: Character]()
    for (i, s) in arr.enumerated() {
        let char = pattern[pattern.index(pattern.startIndex, offsetBy: i)]
        if dict[s] == nil {
            if dict.values.contains(char) { return false }
            dict.updateValue(char, forKey: s)
        } else {
            if dict[s] != char { return false }
        }
    }
    return true
}
