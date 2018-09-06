//
//  530. Minimum Absolute Difference in BST.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func getMinimumDifference(_ root: TreeNode?) -> Int {
    var set = Set<Int>.init()
    var queue = [TreeNode]()
    if let node = root {
        queue.append(node)
    }
    while !queue.isEmpty {
        let node = queue.first
        queue.removeFirst()
        set.update(with: node!.val)
        if node!.left != nil {
            queue.append(node!.left!)
        }
        if node!.right != nil {
            queue.append(node!.right!)
        }
    }
    var res = Int.max
    let arr = set.sorted()
    for i in 0..<arr.count-1 {
        if abs(arr[i]-arr[i+1]) < res {
            res = abs(arr[i]-arr[i+1])
        }
    }
    return res
}
