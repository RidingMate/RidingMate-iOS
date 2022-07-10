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
  }
  
  //MARK: - Functions
}
