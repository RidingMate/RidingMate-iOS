//
//  RegisterBikeButton.swift
//  RidingMate
//
//  Created by 윤병일 on 2022/07/10.
//

import UIKit

class RegisterBikeButton : UIButton {
  
  //MARK: - Properties
  private let buttonImageView : UIImageView = {
    let view = UIImageView()
    view.clipsToBounds = true
    view.contentMode = .scaleAspectFill
    view.image = UIImage(named: "")
    return view
  }()
  
  private let registerBikeLabel : UILabel = {
    let label = UILabel()
    label.text = "새 바이크 등록하기"
    label.font = UIFont.fontWithName(type: .medium, size: 13)
    label.textAlignment = .center
    label.textColor = .grayColor
    return label
  }()
  
  //MARK: - Init
  override init(frame: CGRect) {
    super.init(frame: frame)
    
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  //MARK: - Functions
  private func configureUI() {
    
  }
  
  //MARK: - @objc func
  
}
