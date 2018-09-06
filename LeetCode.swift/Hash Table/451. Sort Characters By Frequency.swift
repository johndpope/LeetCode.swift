//
//  451. Sort Characters By Frequency.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func frequencySort(_ s: String) -> String {
    var dict = [Character: String]()
    for char in s {
        let value = dict[char] ?? ""
        dict.updateValue(value+"\(char)", forKey: char)
    }
    let arr = Array(dict.values).sorted(by: { $0.count >= $1.count })
    var string = ""
    for item in arr {
        string = string + item
    }
    return string
}
