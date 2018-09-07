//
//  347. Top K Frequent Elements.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/7.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var dictionary = [Int: Int]()
    for num in nums {
        let value = dictionary[num] ?? 0
        dictionary.updateValue(value+1, forKey: num)
    }
    var array = dictionary.reversed().sorted { $0.value > $1.value }
    var result = [Int]()
    for i in 0..<k {
        result.append(array[i].key)
    }
    return result
}
