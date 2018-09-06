//
//  387. First Unique Character in a String.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func firstUniqChar(_ s: String) -> Int {
    var dictionary = [String: Int]()
    for char in s {
        let value = dictionary["\(char)"] ?? 0
        dictionary.updateValue(value+1, forKey: "\(char)")
    }
    for char in s {
        if dictionary["\(char)"] == 1 { return s.index(of: char)!.encodedOffset }
    }
    return -1
}

//func firstUniqChar(_ s: String) -> Int { //Time Limit Exceeded
//    for (i, char) in s.enumerated() {
//        var string = s
//        string.remove(at: String.Index.init(encodedOffset: i))
//        if !string.contains(char) { return s.index(of: char)!.encodedOffset }
//    }
//    return -1
//}
