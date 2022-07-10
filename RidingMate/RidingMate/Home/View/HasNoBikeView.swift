//
//  HasNoBikeView.swift
//  RidingMate
//
//  Created by 윤병일 on 2022/07/10.
//

import UIKit

class HasNoBikeView : UIView {
  
  //MARK: - Property
  
  private let hasNoBikeLabel : UILabel = {
    let label = UILabel()
    label.text = "등록된 바이크가 없어요:("
    label.font = UIFont.fontWithName(type: .bold, size: 15)
    return label
  }()
  
  
  //MARK: - Init
  
  //MARK: - Functions
}
