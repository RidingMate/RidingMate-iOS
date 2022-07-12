//
//  HomeViewController.swift
//  RidingMate
//
//  Created by ㅇ오ㅇ on 2022/06/11.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {
  
  //MARK: - Property
  let myBikeLabel = UILabel()
  
  let hasNoBikeView = HasNoBikeView()
  
  //MARK: - LifeCycle
  override func viewDidLoad() {
    super.viewDidLoad()
    setNavi()
    configureUI()
    setUserNameLabel(name: "윤병일")
  }
  
  //MARK: - Functions
  private func setNavi() {
    let logoButton = UIBarButtonItem(image: UIImage(named: "NaviLogo"), style: .done, target: self, action: nil)
    logoButton.tintColor = .blackColor
    navigationItem.leftBarButtonItem = logoButton
     
    let alarmButton = UIBarButtonItem(image: UIImage(systemName: "bell"), style: .plain, target: self, action: nil)
    alarmButton.tintColor = .grayColor
    navigationItem.rightBarButtonItem = alarmButton
  }
  
  private func setUserNameLabel(name : String) {
    let attributedText = NSMutableAttributedString(string: name, attributes: [.font : UIFont.fontWithName(type: .semibold, size: 22), .foregroundColor : UIColor.blackColor])
    attributedText.append(NSAttributedString(string: " 님의 바이크입니다.", attributes: [.font : UIFont.fontWithName(type: .medium, size: 13), .foregroundColor : UIColor.blackColor]))
    myBikeLabel.attributedText = attributedText
  }
}

  //MARK: - Extension
extension HomeViewController {
  
  private func configureUI() {
    [hasNoBikeView, myBikeLabel].forEach {
      view.addSubview($0)
    }
    
    hasNoBikeView.snp.makeConstraints {
      $0.center.equalToSuperview()
      $0.width.equalTo(168)
      $0.height.equalTo(193)
    }
    
    myBikeLabel.snp.makeConstraints {
      $0.top.equalTo(view.safeAreaLayoutGuide).offset(20)
      $0.leading.equalToSuperview().offset(15)
    }
  }
}
