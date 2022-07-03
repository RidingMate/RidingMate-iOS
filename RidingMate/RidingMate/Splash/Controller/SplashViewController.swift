//
//  SplashViewController.swift
//  RidingMate
//
//  Created by ㅇ오ㅇ on 2022/06/11.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa
import SnapKit

class SplashViewController: UIViewController {
  
  // MARK: - Property
  private let disposeBag = DisposeBag()
  private let splashImageView = SplashLogoImageView()
  private var viewModel = SplashViewModel()
  
  lazy var loginButton : LogInSignInButton = {
    let button = LogInSignInButton(title: "로그인", titleColor: .blackColor, backColor: .whiteColor)
    button.alpha = 0
    return button
  }()
  
  lazy var signInButton : LogInSignInButton = {
    let button = LogInSignInButton(title: "회원가입", titleColor: .whiteColor, backColor: .blackColor)
    button.layer.borderWidth = 2
    button.layer.borderColor = UIColor.whiteColor.cgColor
    button.alpha = 0
    return button
  }()
  
  // MARK: - Life cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    configureUI()
    viewModel.idToken = "" // 로그인 안되어있을때 뷰 테스트
    //        viewModel.idToken = "12345" // 로그인 되어있을때 테스트 뷰 테스트
    bind()
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    giveSplashViewAnimation()
  }
  
  // MARK: - Function
  
  private func giveSplashViewAnimation() {
    UIView.animate(withDuration: 1.5, delay: 0.5, options: .curveEaseOut, animations: {
      self.splashImageView.splashTitleLabel.alpha = 1
    }, completion: { finished in
      if self.viewModel.alreadyLoggedIn == true {
        self.moveMain()
      } else {
        UIView.animate(withDuration: 0.5, delay: 0.0, options: .curveEaseInOut, animations: {
          self.splashImageView.snp.updateConstraints {
            $0.center.equalToSuperview()
            $0.centerY.equalToSuperview().offset(-100)
          }
          
          self.view.layoutIfNeeded()
        }, completion: { finished in
          self.loginButton.alpha = 1
          self.signInButton.alpha = 1
        })
      }
    })
  }
  
  private func moveMain() {
    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
      if let scene = self.view.window?.windowScene?.delegate as? SceneDelegate {
        scene.moveToMain()
      }
      self.splashImageView.removeFromSuperview()
      self.removeFromParent()
    }
  }
  
  private func bind() {
    signInButton.rx.tap
      .bind {
        let vc = MemberViewController(memberType: .signin)
        self.navigationController?.pushViewController(vc, animated: true)
      }
      .disposed(by: disposeBag)
    
    loginButton.rx.tap
      .bind {
        let vc = MemberViewController(memberType: .login)
        self.navigationController?.pushViewController(vc, animated: true)
      }
      .disposed(by: disposeBag)
  }
}

// MARK: - Layout
extension SplashViewController {
  
  private func configureUI() {
    view.backgroundColor = .blackColor
    
    [splashImageView, loginButton, signInButton].forEach {
      view.addSubview($0)
    }
    
    splashImageView.snp.makeConstraints {
      $0.center.equalToSuperview()
    }
    
    loginButton.snp.makeConstraints {
      $0.centerY.equalToSuperview().offset(95)
      $0.centerX.equalToSuperview()
      $0.width.equalTo(300)
      $0.height.equalTo(50)
    }
    
    signInButton.snp.makeConstraints {
      $0.top.equalTo(loginButton.snp.bottom).offset(15)
      $0.centerX.width.height.equalTo(loginButton)
    }
  }
}
