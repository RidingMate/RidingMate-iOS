//
//  SplashLogoImageView.swift
//  RidingMate
//
//  Created by 윤병일 on 2022/06/15.
//

import UIKit

class SplashLogoImageView : UIView {
  
  //MARK: - Property
  private let splashImageView: UIImageView = {
    let view = UIImageView()
    view.image = UIImage(named: "SplashLogo")
    view.sizeToFit()
    return view
  }()
  
  var splashTitleLabel : UILabel = {
    let label = UILabel()
    label.text = "빠르고 편리한 오토바이 관리 및 중고거래"
    label.textColor = .whiteColor
    label.font = .fontWithName(type: .regular, size: 15)
    label.alpha = 0
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
    backgroundColor = .clear
    
    [splashImageView, splashTitleLabel].forEach {
      addSubview($0)
    }
    
    splashImageView.snp.makeConstraints {
      $0.top.equalToSuperview()
      $0.centerX.equalToSuperview()
    }
    
    splashTitleLabel.snp.makeConstraints {
      $0.top.equalTo(splashImageView.snp.bottom).offset(20)
      $0.centerX.bottom.equalToSuperview()
      $0.leading.trailing.equalToSuperview()
    }
  }
}
