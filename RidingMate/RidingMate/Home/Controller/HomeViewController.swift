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
  
  let hasNoBikeView = HasNoBikeView()
  
  //MARK: - LifeCycle
  override func viewDidLoad() {
    super.viewDidLoad()
    setNavi()
    configureUI()
  }
  
  //MARK: - Functions
  private func setNavi() {
    
    let logoButton = UIBarButtonItem(image: UIImage(named: "NaviLogo"), style: .done, target: self, action: nil)
    logoButton.tintColor = .blackColor
    navigationItem.leftBarButtonItem = logoButton
     
    navigationItem.leftBarButtonItem?.image = UIImage(named: "NaviLogo")

    
    let alarmButton = UIBarButtonItem(image: UIImage(systemName: "bell"), style: .plain, target: self, action: nil)
    alarmButton.tintColor = .grayColor
    navigationItem.rightBarButtonItem = alarmButton
  }
}

extension HomeViewController {
  
  private func configureUI() {
    [hasNoBikeView].forEach {
      view.addSubview($0)
    }
    
    hasNoBikeView.snp.makeConstraints {
      $0.center.equalToSuperview()
      $0.width.equalTo(168)
      $0.height.equalTo(193)
    }
  }
}
