//
//  112. Path Sum.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
    if root == nil { return false }
    if root != nil && root?.left == nil && root?.right == nil {
        return root?.val == sum
    }
    return hasPathSum(root?.left, sum-root!.val) || hasPathSum(root?.right, sum-root!.val)
}
