//
//  121. Best Time to Buy and Sell Stock.swift
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
    for i in 0..<prices.count-1 {
        buyPrice = prices[i]
        if buyPrice < prices[i+1] {
            let array = Array(prices[i...prices.count-1])
            for j in 1..<array.count {
                sellPrice = array[j]
                if sellPrice > array[j-1] && sellPrice - buyPrice > maxProfit { maxProfit = sellPrice - buyPrice }
            }
        }
    }
    return maxProfit
}
