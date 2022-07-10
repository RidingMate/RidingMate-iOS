//
//  RegisterBikeButton.swift
//  RidingMate
//
//  Created by 윤병일 on 2022/07/10.
//

import UIKit
import SnapKit

class RegisterBikeButton : UIButton {
  
  //MARK: - Properties
  private let buttonImageView : UIImageView = {
    let view = UIImageView()
    view.clipsToBounds = true
    view.contentMode = .scaleAspectFill
    view.image = UIImage(named: "GrayBike")
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
    configureUI()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  //MARK: - Functions
  private func configureUI() {
    layer.borderColor = UIColor.lightGrayColor.cgColor
    layer.borderWidth = 1
    layer.cornerRadius = 15
    
    [buttonImageView, registerBikeLabel].forEach {
      addSubview($0)
    }
    
    buttonImageView.snp.makeConstraints {
      $0.top.equalToSuperview().offset(38)
      $0.width.equalTo(90)
      $0.height.equalTo(54)
      $0.bottom.equalToSuperview().offset(73)
    }
    
    registerBikeLabel.snp.makeConstraints {
      $0.bottom.equalTo(buttonImageView.snp.trailing).offset(5)
      $0.centerX.equalToSuperview()
    }
  }
}
