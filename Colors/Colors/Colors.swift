//
//  Color.swift
//  SwiftKnife
//
//  Created by Bryan Lim on 6/23/14.
//  Copyright (c) 2014 TADA. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    class func rgb(rgbValue:NSInteger) -> UIColor{
        return UIColor(red: (CGFloat)((rgbValue & 0xFF0000) >> 16)/255.0,
            green: (CGFloat)((rgbValue & 0xFF00) >> 8)/255.0,
            blue: (CGFloat)((rgbValue & 0xFF))/255.0,
            alpha: 1.0)
    }
    
    class func rgba(rgbValue:NSInteger, alpha:CGFloat) -> UIColor{
        return UIColor(red: (CGFloat)((rgbValue & 0xFF0000) >> 16)/255.0,
            green: (CGFloat)((rgbValue & 0xFF00) >> 8)/255.0,
            blue: (CGFloat)((rgbValue & 0xFF))/255.0,
            alpha: ((alpha)/255.0))
    }

    
    class func flatRedColor() -> UIColor {
        return rgb(0xE74C3C)
    }
    
    class func flatDarkRedColor() -> UIColor {
        return rgb(0xC0392B)
    }
    
    class func flatGreenColor() -> UIColor {
        return rgb(0x2ECC71)
    }
    
    class func flatDarkGreenColor() -> UIColor {
        return rgb(0x27AE60)
    }
    
    class func flatBlueColor() -> UIColor {
        return rgb(0x3498DB)
    }
    
    class func flatDarkBlueColor() -> UIColor {
        return rgb(0x2980B9)
    }
    
    class func flatTealColor() -> UIColor {
        return rgb(0x1ABC9C)
    }
    
    class func flatDarkTealColor() -> UIColor {
        return rgb(0x16A085)
    }
    
    class func flatPurpleColor() -> UIColor {
        return rgb(0x9B59B6)
    }
    
    class func flatDarkPurpleColor() -> UIColor {
        return rgb(0x8E44AD)
    }
    
    
    class func flatYellowColor() -> UIColor {
        return rgb(0xF1C40F)
    }
    
    class func flatDarkYellowColor() -> UIColor {
        return rgb(0xF39C12)
    }
    
    class func flatOrangeColor() -> UIColor {
        return rgb(0xE67E22)
    }
    
    class func flatDarkOrangeColor() -> UIColor {
        return rgb(0xD35400)
    }
    
    class func flatGrayColor() -> UIColor {
        return rgb(0x95A5A6)
    }
    
    class func flatDarkGrayColor() -> UIColor {
        return rgb(0x7F8C8D)
    }
    
    class func flatWhiteColor() -> UIColor {
        return rgb(0xECF0F1)
    }
    
    class func flatDarkWhiteColor() -> UIColor {
        return rgb(0xBDC3C7)
    }
    
    class func flatBlackColor() -> UIColor {
        return rgb(0x34495E)
    }
    
    class func flatDarkBlackColor() -> UIColor {
        return rgb(0x2C3E50)
    }
    
}

