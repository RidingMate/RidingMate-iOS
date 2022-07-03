//
//  SocialButton.swift
//  RidingMate
//
//  Created by 윤병일 on 2022/07/03.
//

import UIKit
import SnapKit

class SocialButton : UIButton {
  
  var type : MemberType?
  
  let buttonImageView : UIImageView = {
    let view = UIImageView()
    view.contentMode = .scaleAspectFit
    return view
  }()
  
  let buttonTitleLabel : UILabel = {
    let label = UILabel()
    label.textColor = .whiteColor
    label.font = .fontWithName(type: .semibold, size: 15)
    return label
  }()
  
  //MARK: - Init
  init(image : String, title : String, type : MemberType) {
    super.init(frame: .zero)
    
    self.type = type
    
    configureUI()
    
    buttonImageView.image = UIImage(named: image)
    
    if type == .login {
      buttonTitleLabel.text = title + " 계정으로 로그인"
    } else {
      buttonTitleLabel.text = title + " 계정으로 시작하기"
    }
    
    self.layer.cornerRadius = 15
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  //MARK: - Functions
  private func configureUI() {
    self.backgroundColor = .blackColor
    
    [buttonImageView, buttonTitleLabel].forEach {
      self.addSubview($0)
    }
    
    self.snp.makeConstraints {
      $0.height.equalTo(50)
    }
    
    buttonImageView.snp.makeConstraints {
      $0.centerY.equalToSuperview()
      $0.leading.equalToSuperview().inset(20)
      $0.width.height.equalTo(20)
    }
    
    buttonTitleLabel.snp.makeConstraints {
      $0.center.equalToSuperview()
    }
  }
}
