//
//  129. Sum Root to Leaf Numbers.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

//129 ???
func sumNumbers(_ root: TreeNode?) -> Int {
    let paths = binaryTreePaths(root)
    var sum = 0
    for path in paths {
        if Int(path) != nil {
            sum += Int(path) ?? 0
        }
    }
    return sum
}
