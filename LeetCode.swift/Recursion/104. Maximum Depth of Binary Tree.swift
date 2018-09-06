//
//  104. Maximum Depth of Binary Tree.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func maxDepth(_ root: TreeNode?) -> Int {
    if root == nil { return 0 }
    return max(maxDepth(root?.left), maxDepth(root?.right)) + 1
}
