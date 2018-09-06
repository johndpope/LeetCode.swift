//
//  125. Valid Palindrome.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func isPalindrome(_ s: String) -> Bool {
    var array = Array(s)
    array = array.filter({ String($0).rangeOfCharacter(from: CharacterSet.alphanumerics) != nil })
    var i = 0
    var j = array.count-1
    while i < j {
        if "\(array[i])".lowercased() != "\(array[j])".lowercased() {
            return false
        } else {
            i += 1
            j -= 1
        }
    }
    return true
}
