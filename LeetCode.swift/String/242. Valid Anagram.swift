//
//  242. Valid Anagram.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func isAnagram(_ s: String, _ t: String) -> Bool {
    return s.sorted() == t.sorted()
}
