//
//  HomeViewController.swift
//  RidingMate
//
//  Created by ㅇ오ㅇ on 2022/06/11.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
  
  //MARK: - Property
  
  
  //MARK: - LifeCycle
  override func viewDidLoad() {
    super.viewDidLoad()
    setNavi()
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
