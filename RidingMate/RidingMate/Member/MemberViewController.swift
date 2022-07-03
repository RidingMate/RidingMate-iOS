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
  private var memberTypeCheck: MemberType?
  
  private let titleMainLabel: UILabel = {
    let label = UILabel()
    label.textColor = .black
    label.sizeToFit()
    label.clipsToBounds = true
    return label
  }()
  
  private let titleSubLabel: UILabel = {
    let label = UILabel()
    label.textColor = .black
    label.sizeToFit()
    label.clipsToBounds = true
    return label
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
//    self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
//    self.navigationController?.navigationBar.shadowImage = UIImage()
//    self.navigationController?.navigationBar.isTranslucent = true
//    self.navigationController?.view.backgroundColor = .clear
//
//    self.navigationController?.hidesBarsOnSwipe = true
    
    let imageView = UIImageView(image: UIImage(named: "Back"))
    imageView.frame = CGRect(origin: .zero, size: CGSize(width: 50, height: 50))
    imageView.clipsToBounds = true
    
//    self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: imageView)
  }
}

// MARK: - Layout
extension MemberViewController {
  private func configureUI() {
    self.view.backgroundColor = .white
    [titleMainLabel, titleSubLabel].forEach {
      view.addSubview($0)
    }
    
    self.titleMainLabel.text = memberTypeCheck?.rawValue
    self.titleSubLabel.text = memberTypeCheck == .signin ? "회원가입": "로그인"
    
    titleMainLabel.snp.makeConstraints {
      $0.top.equalTo(view.safeAreaLayoutGuide.snp.top).inset(40)
      $0.centerX.equalToSuperview()
    }
    
    titleSubLabel.snp.makeConstraints {
      $0.top.equalTo(titleMainLabel.snp.bottom).offset(10)
      $0.centerX.equalToSuperview()
    }
  }
}
