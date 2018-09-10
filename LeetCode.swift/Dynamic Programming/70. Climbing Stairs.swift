//
//  70. Climbing Stairs.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/10.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func climbStairs(_ n: Int) -> Int {
    var array = [Int]()
    array.append(1)
    array.append(1)
    guard n >= 2 else { return array[n] }
    for i in 2...n {
        array.append(array[i-1] + array[i-2])
    }
    return array[n]
}

// func climbStairs(_ n: Int) -> Int {
//     var array = [Int]()
//     array.append(1)
//     array.append(1)
//     array.append(2)
//     for i in 2...n {
//         array.append(array[i-1] + array[i-2])
//     }
//     return array[n]
// }

// func climbStairs(_ n: Int) -> Int {
//     var array = [Int]()
//     array[0] = 1
//     array[1] = 1
//     array[2] = 2
//     for i in 2...n {
//         array[i] = array[i-1] + array[i-2]
//     }
//     return array[n]
// }

//func climbStairs(_ n: Int) -> Int { // Time Limit Exceeded
//    if n == 1 { return 1 }
//    if n == 2 { return 2 }
//    return climbStairs(n-1) + climbStairs(n-2)
//}
