//
//  UIColor.swift
//  RidingMate
//
//  Created by 윤병일 on 2022/06/15.
//

import UIKit

//MARK: - UIColor
extension UIColor {
  static func rgb(red : CGFloat, green : CGFloat, blue : CGFloat) -> UIColor {
    return UIColor.init(red: red / 255, green: green / 255, blue: blue / 255, alpha: 1.0)
  }
  
  static let blackColor = UIColor.rgb(red: 34, green: 34, blue: 34)
  static let whiteColor = UIColor.rgb(red: 255, green: 255, blue: 255)
}