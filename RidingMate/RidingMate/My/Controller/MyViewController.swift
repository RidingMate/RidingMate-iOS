//
//  MyViewController.swift
//  RidingMate
//
//  Created by ㅇ오ㅇ on 2022/06/11.
//

import Foundation
import UIKit

class MyViewController: UIViewController {
  
  //MARK: - Property
  let myBikeImage = MyDefaultImageButton()
  
  //MARK: - Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    navigationItem.title = "마이페이지"
    navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "SettingButton"),
                                                        style: .done,
                                                        target: self,
                                                        action: nil)
    navigationItem.rightBarButtonItem?.tintColor = .grayColor
    
    willConfigure()
  }
  
  //MARK: - Functions
  
}

extension MyViewController {
  private func willConfigure() {
    view.addSubview(myBikeImage)
    
    myBikeImage.snp.makeConstraints {
      $0.top.equalTo(view.safeAreaLayoutGuide.snp.top).inset(15)
      $0.leading.equalToSuperview().inset(15)
      $0.width.height.equalTo(100)
    }
    
    myBikeImage.settingMyImage(imageString: nil)
  }
}
