//
//  111. Minimum Depth of Binary Tree.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func minDepth(_ root: TreeNode?) -> Int {
    if root == nil { return 0 }
    if root?.left == nil {
        return minDepth(root?.right) + 1
    }
    if root?.right == nil {
        return minDepth(root?.left) + 1
    }
    return min(minDepth(root?.left), minDepth(root?.right)) + 1
}
