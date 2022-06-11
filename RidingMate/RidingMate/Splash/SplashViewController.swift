//
//  SplashViewController.swift
//  RidingMate
//
//  Created by ㅇ오ㅇ on 2022/06/11.
//

import Foundation
import UIKit
import SnapKit

class SplashViewController: UIViewController {
  
  // MARK: - property
  private let splashImageView: UIImageView = {
    let img = UIImageView()
    img.image = UIImage(named: "BikeSplash")
    img.sizeToFit()
    return img
  }()
  
  // MARK: - Life cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    configureUI()
    attribute()
    moveMain()
  }
  
  // MARK: - function
  private func attribute() {
    view.backgroundColor = .white
  }
  
  private func moveMain() {
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
      if let scene = self.view.window?.windowScene?.delegate as? SceneDelegate {
        scene.moveToMain()
      }
      self.splashImageView.removeFromSuperview()
      self.removeFromParent()
    }
  }
}

// MARK: - Layout
extension SplashViewController {
  
  private func configureUI() {
    [splashImageView].forEach {
      view.addSubview($0)
    }
    
    splashImageView.snp.makeConstraints {
      $0.center.equalToSuperview()
    }
    
  }
}
