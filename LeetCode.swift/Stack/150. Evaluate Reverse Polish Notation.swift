//
//  150. Evaluate Reverse Polish Notation.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func evalRPN(_ tokens: [String]) -> Int {
    var arr = [Int]()
    var value = 0
    for string in tokens {
        if Int(string) == nil {
            value = arr.last ?? 0
            arr.removeLast()
            switch string {
            case "+": arr[arr.count-1] = arr[arr.count-1] + value
            case "-": arr[arr.count-1] = arr[arr.count-1] - value
            case "*": arr[arr.count-1] = arr[arr.count-1] * value
            case "/": arr[arr.count-1] = arr[arr.count-1] / value
            default: break
            }
        } else {
            arr.append(Int(string)!)
        }
    }
    return arr[0]
}

//func evalRPN(_ tokens: [String]) -> Int {
//    var arr = tokens
//    var value = 0
//    while arr.count > 1 {
//        for (i, string) in arr.enumerated() {
//            if Int(string) == nil {
//                switch string {
//                case "+": value = Int(arr[i-2])!+Int(arr[i-1])!
//                case "-": value = Int(arr[i-2])!-Int(arr[i-1])!
//                case "*": value = Int(arr[i-2])!*Int(arr[i-1])!
//                case "/": value = Int(arr[i-2])!/Int(arr[i-1])!
//                default: break
//                }
//                arr[i] = "\(value)"
//                arr.remove(at: i-1)
//                arr.remove(at: i-2)
//            }
//        }
//    }
//    return Int(arr[0])!
//}
