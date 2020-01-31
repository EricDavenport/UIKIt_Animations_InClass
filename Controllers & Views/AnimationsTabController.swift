//
//  AnimationsTabController.swift
//  UIKIt_Animations
//
//  Created by Eric Davenport on 1/31/20.
//  Copyright © 2020 Eric Davenport. All rights reserved.
//

import UIKit

class AnimationsTabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
      viewControllers = [SampleAnimationsController(), ConstraintsAnimationController()]
      // set viewControllers for the tab b ar
      // in our app we will have two tabs
      
      
    }


}


/*
 self.tabBarController?.tabBar.items![0].image = UIImage(named: "your image name")
 // items![0] index of your tab bar item.items![0] means tabbar first item

 self.tabBarController?.tabBar.items![0].selectedImage = UIImage(named: "your image name")
 */
