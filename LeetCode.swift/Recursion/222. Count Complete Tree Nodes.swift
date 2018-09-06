//
//  222. Count Complete Tree Nodes.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func countNodes(_ root: TreeNode?) -> Int {
    if root == nil { return 0 }
    return countNodes(root?.left) + countNodes(root?.right) + 1
}
