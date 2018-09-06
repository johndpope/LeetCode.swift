//
//  98. Validate Binary Search Tree.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func isValidBST(_ root: TreeNode?) -> Bool {
    return isValidBST(root, min: nil, max: nil)
}

func isValidBST(_ root: TreeNode?, min: Int?, max: Int?) -> Bool {
    if root == nil { return true }
    if let min = min, root!.val <= min {
        return false
    }
    if let max = max, root!.val >= max {
        return false
    }
    return isValidBST(root?.left, min: min, max: root?.val) && isValidBST(root?.right, min: root?.val, max: max)
}
