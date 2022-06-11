//
//  MainTabBarController.swift
//  RidingMate
//
//  Created by ㅇ오ㅇ on 2022/06/11.
//

import Foundation
import UIKit

class MainTabBarController: UITabBarController {
  
  //MARK: - LifeCycle
  override func viewDidLoad() {
    super.viewDidLoad()
    self.setTabBarControllers()
  }
  
  //MARK: - Functions
  private func setTabBarControllers() {
    let homeViewController = HomeViewController()
    let homeNavi = UINavigationController(rootViewController: homeViewController)
    homeNavi.tabBarItem = UITabBarItem(title: nil,
                                       image: UIImage(named: "Home"),
                                       selectedImage: UIImage(named: "HomeSelect"))
    
    let bikeViewController = BikeViewController()
    let bikeNavi = UINavigationController(rootViewController: bikeViewController)
    bikeNavi.tabBarItem = UITabBarItem(title: nil,
                                       image: UIImage(named: "Bike"),
                                       selectedImage: UIImage(named: "BikeSelect"))
    
    let registerViewController = RegisterViewController()
    let registerNavi = UINavigationController(rootViewController: registerViewController)
    registerNavi.tabBarItem = UITabBarItem(title: nil,
                                           image: UIImage(named: "Register"),
                                           selectedImage: UIImage(named: "RegisterSelect"))
    
    let storeViewController = StoreViewController()
    let storeNavi = UINavigationController(rootViewController: storeViewController)
    storeNavi.tabBarItem = UITabBarItem(title: nil,
                                        image: UIImage(named: "Store"),
                                        selectedImage: UIImage(named: "StoreSelect"))
    
    let myViewController = MyViewController()
    let myNavi = UINavigationController(rootViewController: myViewController)
    myNavi.tabBarItem = UITabBarItem(title: nil,
                                     image: UIImage(named: "My"),
                                     selectedImage: UIImage(named: "MySelect"))
    UITabBar.appearance().tintColor = .black
    
    self.viewControllers = [homeNavi, bikeNavi, registerNavi, storeNavi, myNavi]
    
    
  }
}

