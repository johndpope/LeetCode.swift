//
//  438. Find All Anagrams in a String.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

//438 Time Limit Exceeded
func findAnagrams(_ s: String, _ p: String) -> [Int] {
    if s.count < p.count { return [] }
    var arr = [Int]()
    var l = 0
    var startIndex = s.index(s.startIndex, offsetBy: l)
    var endIndex = s.index(startIndex, offsetBy: p.count)
    var string = ""
    while l+p.count-1 < s.count {
        startIndex = s.index(s.startIndex, offsetBy: l)
        endIndex = s.index(startIndex, offsetBy: p.count)
        string = String(s[startIndex..<endIndex])
        for char in p {
            if string.contains(char) {
                string.remove(at: string.index(of: char)!)
            }
        }
        if string.count == 0 {
            arr.append(l)
        }
        l += 1
    }
    return arr
}
