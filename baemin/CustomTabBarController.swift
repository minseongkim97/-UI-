//
//  CustomTabBarController.swift
//  baemin
//
//  Created by MIN SEONG KIM on 2021/06/23.
//

import UIKit

class CustomTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 모서리 둥글게
        tabBar.layer.cornerRadius = 20
        tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        // 그림자 넣기
        tabBar.layer.shadowOffset = CGSize(width: 1, height: 2)
        tabBar.layer.shadowRadius = 4
        tabBar.layer.shadowColor = UIColor.black.cgColor
        tabBar.layer.shadowOpacity = 0.3
    }
}
