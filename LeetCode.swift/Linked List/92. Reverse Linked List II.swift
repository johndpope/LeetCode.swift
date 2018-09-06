//
//  92. Reverse Linked List II.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

//func reverseBetween(_ head: ListNode?, _ m: Int, _ n: Int) -> ListNode? {
//    var current = head
//    var currentM: ListNode? = nil
//    var currentN = head
//    var previous: ListNode? = nil
//    var c: ListNode? = nil
//    for i in 1..<n {
//        next = currentN?.next
//        if i == m-1 { currentM = next; currentN?.next = nil }
//        currentN = next
//    }
//    while currentM != nil {
//        next = currentM?.next
//        current?.next = previous
//        previous = currentM
//        currentM = next
//    }
//    while next != nil {
//        next = current?.next
//        current = next
//    }
//
//    for i in 1..<n {
//        if i == m-1 { current?.next = currentM }
//        if i == n-1 { current?.next = currentN }
//        next = current?.next
//        current = next
//    }
//    return current
//}
