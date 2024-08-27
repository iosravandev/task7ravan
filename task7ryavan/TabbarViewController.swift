//
//  TabbarViewController.swift
//  task7ryavan
//
//  Created by Ravan on 26.08.24.
//

import UIKit

class TabbarViewController: UITabBarController  {
    let customColor = UIColor(red: 1.0, green: 114/255.0, blue: 94/255.0, alpha: 1.0)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().barTintColor = customColor
        tabBar.backgroundColor = customColor
        tabBar.unselectedItemTintColor = UIColor.white
        tabBar.layer.cornerRadius = 16
        //view.layer.cornerRadius = 16
        tabBar.layer.masksToBounds = true
        tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
}
