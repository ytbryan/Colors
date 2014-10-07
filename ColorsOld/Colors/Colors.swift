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
    
    class func CGRGB(rgbValue:NSInteger) -> CGColorRef{
        return UIColor(red: (CGFloat)((rgbValue & 0xFF0000) >> 16)/255.0,
            green: (CGFloat)((rgbValue & 0xFF00) >> 8)/255.0,
            blue: (CGFloat)((rgbValue & 0xFF))/255.0,
            alpha: 1.0).CGColor
    }
    
    class func CGRGBA(rgbValue:NSInteger, alpha:CGFloat) -> CGColorRef{
        return UIColor(red: (CGFloat)((rgbValue & 0xFF0000) >> 16)/255.0,
            green: (CGFloat)((rgbValue & 0xFF00) >> 8)/255.0,
            blue: (CGFloat)((rgbValue & 0xFF))/255.0,
            alpha: ((alpha)/255.0)).CGColor
    }
    
    class func RGB(rgbValue:NSInteger) -> UIColor{
        return UIColor(red: (CGFloat)((rgbValue & 0xFF0000) >> 16)/255.0,
            green: (CGFloat)((rgbValue & 0xFF00) >> 8)/255.0,
            blue: (CGFloat)((rgbValue & 0xFF))/255.0,
            alpha: 1.0)
    }
    
    class func RGBA(rgbValue:NSInteger, alpha:CGFloat) -> UIColor{
        return UIColor(red: (CGFloat)((rgbValue & 0xFF0000) >> 16)/255.0,
            green: (CGFloat)((rgbValue & 0xFF00) >> 8)/255.0,
            blue: (CGFloat)((rgbValue & 0xFF))/255.0,
            alpha: ((alpha)/255.0))
    }
    
  
    
    //Additional colors
    class var redColor: UIColor {
    return RGB(0xE74C3C)
    }
    
    class var blueColor: UIColor {
    return RGB(0x3498DB)
    }
    
    class var flatRedColor: UIColor{
    return RGB(0xE74C3C)
    }
    
    class var flatDarkRedColor: UIColor{
    return RGB(0xC0392B)
    }
    
    class var flatGreenColor: UIColor{
    return RGB(0x2ECC71)
    }
    
    class var flatDarkGreenColor: UIColor{
    return RGB(0x27AE60)
    }
    
    class var flatBlueColor: UIColor{
    return RGB(0x3498DB)
    }
    
    class var flatDarkBlueColor: UIColor{
    return RGB(0x2980B9)
    }
    
    class var flatTealColor: UIColor{
    return RGB(0x1ABC9C)
    }
    
    class var flatDarkTealColor: UIColor{
    return RGB(0x16A085)
    }
    
    class var flatPurpleColor: UIColor{
    return RGB(0x9B59B6)
    }
    
    class var flatDarkPurpleColor: UIColor{
    return RGB(0x8E44AD)
    }
    
    
    class var flatYellowColor: UIColor{
    return RGB(0xF1C40F)
    }
    
    class var flatDarkYellowColor: UIColor{
    return RGB(0xF39C12)
    }
    
    class var flatOrangeColor: UIColor{
    return RGB(0xE67E22)
    }
    
    class var flatDarkOrangeColor: UIColor{
    return RGB(0xD35400)
    }
    
    class var flatGrayColor: UIColor{
    return RGB(0x95A5A6)
    }
    
    class var flatDarkGrayColor: UIColor{
    return RGB(0x7F8C8D)
    }
    
    class var flatWhiteColor: UIColor{
    return RGB(0xECF0F1)
    }
    
    class var flatDarkWhiteColor: UIColor{
    return RGB(0xBDC3C7)
    }
    
    class var flatBlackColor: UIColor{
    return RGB(0x34495E)
    }
    
    class var flatDarkBlackColor: UIColor{
    return RGB(0x2C3E50)
    }
    
    //CGColor
    class var CGRedColor: CGColorRef {
    return RGB(0xE74C3C).CGColor
    }
    
    class var CGBlueColor: CGColorRef {
    return RGB(0x3498DB).CGColor
    }
    
    class var CGFlatRedColor: CGColorRef{
    return RGB(0xE74C3C).CGColor
    }
    
    class var CGFlatDarkRedColor: CGColorRef{
    return RGB(0xC0392B).CGColor
    }
    
    class var CGFlatGreenColor: CGColorRef{
    return RGB(0x2ECC71).CGColor
    }
    
    class var CGFlatDarkGreenColor: CGColorRef{
    return RGB(0x27AE60).CGColor
    }
    
    class var CGFlatBlueColor: CGColorRef{
    return RGB(0x3498DB).CGColor
    }
    
    class var CGFlatDarkBlueColor: CGColorRef{
    return RGB(0x2980B9).CGColor
    }
    
    class var CGFlatTealColor: CGColorRef{
    return RGB(0x1ABC9C).CGColor
    }
    
    class var CGFlatDarkTealColor: CGColorRef{
    return RGB(0x16A085).CGColor
    }
    
    class var CGFlatPurpleColor: CGColorRef{
    return RGB(0x9B59B6).CGColor
    }
    
    class var CGFlatDarkPurpleColor: CGColorRef{
    return RGB(0x8E44AD).CGColor
    }
    
    
    class var CGFlatYellowColor: CGColorRef{
    return RGB(0xF1C40F).CGColor
    }
    
    class var CGFlatDarkYellowColor: CGColorRef{
    return RGB(0xF39C12).CGColor
    }
    
    class var CGFlatOrangeColor: CGColorRef{
    return RGB(0xE67E22).CGColor
    }
    
    class var CGFlatDarkOrangeColor: CGColorRef{
    return RGB(0xD35400).CGColor
    }
    
    class var CGFlatGrayColor: CGColorRef{
    return RGB(0x95A5A6).CGColor
    }
    
    class var CGFlatDarkGrayColor: CGColorRef{
    return RGB(0x7F8C8D).CGColor
    }
    
    class var CGFlatWhiteColor: CGColorRef{
    return RGB(0xECF0F1).CGColor
    }
    
    class var CGFlatDarkWhiteColor: CGColorRef{
    return RGB(0xBDC3C7).CGColor
    }
    
    class var CGFlatBlackColor: CGColorRef{
    return RGB(0x34495E).CGColor
    }
    
    class var CGFlatDarkBlackColor: CGColorRef{
    return RGB(0x2C3E50).CGColor
    }
    
    
}

