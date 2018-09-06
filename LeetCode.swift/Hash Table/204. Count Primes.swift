//
//  204. Count Primes.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

//204 Time Limit Exceeded
func countPrimes(_ n: Int) -> Int {
    if n < 3 { return 0 }
    var array = [Int]()
    for i in 2..<n {
        var isPrimes = true
        for item in array {
            if i%item == 0 {
                isPrimes = false
            }
        }
        if isPrimes { array.append(i) }
    }
    return array.count
}
