//
//  206. Reverse Linked List.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func reverseList(_ head: ListNode?) -> ListNode? {
    var current = head
    var previous: ListNode? = nil
    var next: ListNode? = nil
    while current != nil {
        next = current?.next
        current?.next = previous
        previous = current
        current = next
    }
    return previous
}
