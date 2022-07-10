//
//  MyDefaultImageButton.swift
//  RidingMate
//
//  Created by 안준영 on 2022/07/10.
//

import UIKit
import SnapKit
import Kingfisher

class MyDefaultImageButton: UIButton {
  
  init() {
    super.init(frame: .zero)
    
    backgroundColor = .backLightGrayColor
    layer.cornerRadius = 10
    
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  //MARK: - Function
  func settingMyImage(imageString: String?) {
    if imageString != nil {
      
    } else {
      let bikeIMG = UIImageView(image: UIImage(named: "GrayBike"))
      self.addSubview(bikeIMG)
      bikeIMG.snp.makeConstraints {
        $0.center.equalToSuperview()
        $0.width.equalTo(50)
        $0.height.equalTo(30)
      }
    }
  }
}
