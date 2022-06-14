//
//  LogInSignInButton.swift
//  RidingMate
//
//  Created by 윤병일 on 2022/06/15.
//

import UIKit

class LogInSignInButton : UIButton {
  
  //MARK: - Init
  
  init(title : String, titleColor : UIColor, backColor : UIColor) {
    super.init(frame: .zero)
    setTitle(title, for: .normal)
    setTitleColor(titleColor, for: .normal)
    backgroundColor = backColor
    titleLabel?.font = .fontWithName(type: .semibold, size: 15)
    layer.cornerRadius = 15
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
