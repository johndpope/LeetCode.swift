//
//  122. Best Time to Buy and Sell Stock II.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func maxProfit(_ prices: [Int]) -> Int {
    if prices.count < 2 { return 0 }
    var maxProfit = 0
    var sellPrice = 0
    var buyPrice = 0
    for i in 1..<prices.count {
        sellPrice = prices[i]
        buyPrice = prices[i-1]
        if sellPrice > buyPrice {
            maxProfit += sellPrice - buyPrice
        }
    }
    return maxProfit
}
