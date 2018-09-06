//
//  205. Isomorphic Strings.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func isIsomorphic(_ s: String, _ t: String) -> Bool {
    if s.count != t.count { return false }
    var dict = [Character: Character]()
    for (i, c) in t.enumerated() {
        let char = s[s.index(s.startIndex, offsetBy: i)]
        if dict[c] == nil {
            if dict.values.contains(char) { return false }
            dict.updateValue(char, forKey: c)
        } else {
            if dict[c] != char { return false }
        }
    }
    return true
}
