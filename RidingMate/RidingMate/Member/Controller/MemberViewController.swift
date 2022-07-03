//
//  MemberViewController.swift
//  RidingMate
//
//  Created by 안준영 on 2022/06/14.
//

import Foundation
import UIKit

class MemberViewController: UIViewController {
  
  // MARK: - Property
  private var memberTypeCheck = MemberType.login
  
  private let titleMainLabel: UILabel = {
    let label = UILabel()
    label.textColor = .blackColor
    label.sizeToFit()
    label.font = .fontWithName(type: .bold, size: 20)
    label.clipsToBounds = true
    return label
  }()
  
  private let titleSubLabel: UILabel = {
    let label = UILabel()
    label.textColor = .blackColor
    label.sizeToFit()
    label.clipsToBounds = true
    label.font = .fontWithName(type: .semibold, size: 12)
    return label
  }()
  
  lazy var googleButton : SocialButton = {
    let button = SocialButton(image: "GoogleIcon", title: "구글", type: memberTypeCheck.self)
    return button
  }()
  
  lazy var kakaoButton : SocialButton = {
    let button = SocialButton(image: "KakaoIcon", title: "카카오", type: memberTypeCheck.self)
    return button
  }()
  
  lazy var appleButton : SocialButton = {
    let button = SocialButton(image: "AppleIcon", title: "애플", type: memberTypeCheck.self)
    return button
  }()
  
  private let bottomImageView : UIImageView = {
    let view = UIImageView()
    view.contentMode = .scaleAspectFit
    view.clipsToBounds = true
    view.image = UIImage(named: "RidingMateCrew")
    return view
  }()
  
  // MARK: - init
  init(memberType: MemberType) {
    self.memberTypeCheck = memberType
    super.init(nibName: nil, bundle: nil)
    
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  // MARK: - Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    setNavi()
    configureUI()
  }
  
  // MARK: - Function
  private func setNavi() {
    let backButton = UIBarButtonItem(image: UIImage(systemName: "chevron.left"), style: .plain, target: self, action: #selector(moveBack))
    backButton.tintColor = .grayColor
    navigationItem.leftBarButtonItem = backButton
    
    navigationController?.interactivePopGestureRecognizer?.delegate = self
  }
  
  //MARK: - @objc func
  @objc private func moveBack() {
    self.navigationController?.popViewController(animated: true)
  }
}

// MARK: - Layout
extension MemberViewController {
  private func configureUI() {
    self.view.backgroundColor = .white
    
    let buttonStackView = UIStackView(arrangedSubviews: [googleButton, kakaoButton, appleButton])
    buttonStackView.axis = .vertical
    buttonStackView.distribution = .fillEqually
    buttonStackView.spacing = 15
    
    [titleMainLabel, titleSubLabel, buttonStackView, bottomImageView].forEach {
      view.addSubview($0)
    }
    
    self.titleMainLabel.text = memberTypeCheck.rawValue
    self.titleSubLabel.text = memberTypeCheck == .signin ? "회원가입": "로그인"
    
    titleMainLabel.snp.makeConstraints {
      $0.top.equalTo(view.safeAreaLayoutGuide.snp.top).inset(40)
      $0.centerX.equalToSuperview()
    }
    
    titleSubLabel.snp.makeConstraints {
      $0.top.equalTo(titleMainLabel.snp.bottom).offset(10)
      $0.centerX.equalToSuperview()
    }
    
    buttonStackView.snp.makeConstraints {
      $0.center.equalToSuperview()
      $0.leading.trailing.equalToSuperview().inset(38)
    }
    
    bottomImageView.snp.makeConstraints {
      $0.centerX.equalToSuperview()
      $0.bottom.equalToSuperview().inset(70)
      $0.width.height.equalTo(55)
    }
  }
}

  //MARK: - UIGestureRecognizerDelegate
extension MemberViewController : UIGestureRecognizerDelegate { // 왼쪽 스크롤시 자동 팝업
  func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
    return true
  }
}
