//
//  HasNoBikeView.swift
//  RidingMate
//
//  Created by 윤병일 on 2022/07/10.
//

import UIKit
import SnapKit

class HasNoBikeView : UIView {
  
  //MARK: - Property
  
  private let hasNoBikeLabel : UILabel = {
    let label = UILabel()
    label.text = "등록된 바이크가 없어요:("
    label.font = UIFont.fontWithName(type: .bold, size: 15)
    label.textColor = .blackColor
    return label
  }()
  
  let registerBikeButton = RegisterBikeButton()
  
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
    backgroundColor = .clear
    
    [hasNoBikeLabel, registerBikeButton].forEach {
      addSubview($0)
    }
    
    hasNoBikeLabel.snp.makeConstraints {
      $0.top.equalToSuperview()
      $0.centerX.equalToSuperview()
    }
    
    registerBikeButton.snp.makeConstraints {
      $0.top.equalTo(hasNoBikeLabel.snp.bottom).offset(15)
      $0.bottom.leading.trailing.equalToSuperview()
    }
  }
}
