//
//  WPYTabBarController.swift
//  WePeiYang
//
//  Created by Allen X on 4/8/17.
//  Copyright © 2017 twtstudio. All rights reserved.
//

import UIKit

class WPYTabBarController: UITabBarController {
    
    convenience init(viewControllers: [UIViewController]?) {
        self.init()
        guard viewControllers != nil else {
            //TODO: log
            //log.error
            return
        }
        setViewControllers(viewControllers, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        selectedIndex = 0
        tabBar.backgroundColor = Metadata.Color.GlobalTabBarBackgroundColor
        tabBar.tintColor = Metadata.Color.WPYAccentColor
        if #available(iOS 10.0, *) {
            tabBar.unselectedItemTintColor = Metadata.Color.grayIconColor
        } else {
            // Fallback on earlier versions
            // Repaint the tabBar item icon image's color and use original color instead of the tintColor
            
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


extension WPYTabBarController: ThemeChanging {
    func changeInto(theme: Theme) {
        
    }
}