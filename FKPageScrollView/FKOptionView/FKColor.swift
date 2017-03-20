//
//  FKColor.swift
//  FKPageScrollView
//
//  Created by apple on 17/3/20.
//  Copyright © 2017年 admin. All rights reserved.
//

import Foundation
import UIKit


// 根据开始和结束的颜色获取颜色
//
// - parameter startColor: 开始颜色
// - parameter endColor:   结束颜色
// - parameter decimal:    变化值
//
// - returns: color
func FKColor(startColor: UIColor, endColor: UIColor, decimal: CGFloat) -> UIColor {
    var startR: CGFloat = 0, startG: CGFloat = 0, startB: CGFloat = 0, startA: CGFloat = 0
    startColor.getRed(&startR, green: &startG, blue: &startB, alpha: &startA)
    var endR: CGFloat = 0, endG: CGFloat = 0, endB: CGFloat = 0, endA: CGFloat = 0;
    endColor.getRed(&endR, green: &endG, blue: &endB, alpha: &endA)
    let resultR = startR + (endR - startR) * decimal
    let resultG = startG + (endG - startG) * decimal
    let resultB = startB + (endB - startB) * decimal
    let resultA = startA + (endA - startA) * decimal
    return UIColor(red: resultR, green: resultG, blue: resultB, alpha: resultA)
}
