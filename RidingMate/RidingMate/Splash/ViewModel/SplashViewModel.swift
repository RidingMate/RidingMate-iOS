//
//  SplashViewModel.swift
//  RidingMate
//
//  Created by 윤병일 on 2022/06/15.
//

import UIKit
import RxSwift
import RxCocoa

struct SplashViewModel {
  
  //MARK: - Property
  
  var idToken : String? // 아이디 토큰
  
  var alreadyLoggedIn : Bool { // 이미 로그인 되어있는지 판별하는 Bool 값
    return idToken != "" && idToken != nil ? true : false
  }

}
