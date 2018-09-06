//
//  257. Binary Tree Paths.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func binaryTreePaths(_ root: TreeNode?) -> [String] {
    if root == nil { return [] }
    var res = [String]()
    res.append(contentsOf: binaryTreePaths(root?.left))
    res.append(contentsOf: binaryTreePaths(root?.right))
    if res.count == 0 {
        return ["\(root!.val)"]
    }
    for (i, item) in res.enumerated() {
        res[i] = "\(root!.val)->" + item
    }
    return res
}
