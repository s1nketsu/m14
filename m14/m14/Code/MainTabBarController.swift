//
//  MainTabBarController.swift
//  m14
//
//  Created by Полищук Александр on 20.10.2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBar()
    }
    
    func setupTabBar() {
        let firstVC = createNavBarContoller(vc: FirstTaskViewController(), itemName: "Задание 1", itemImage: "folder")
        let secondVC = createNavBarContoller(vc: SecondTaskViewController(), itemName: "Задание 2", itemImage: "tray")
        let thirdVC = createNavBarContoller(vc: ThirdTaskViewController(), itemName: "Задание 3", itemImage: "doc")
        
        viewControllers = [firstVC, secondVC, thirdVC]
    }
    
    func createNavBarContoller(vc: UIViewController, itemName: String, itemImage: String) -> UINavigationController {
        let item = UITabBarItem(title: itemName, image: UIImage(systemName: itemImage)?.withAlignmentRectInsets(.init(top: 10, left: 0, bottom: 0, right: 0)), tag: 0)
        let navController = UINavigationController(rootViewController: vc)
        
        navController.tabBarItem = item
//        navController.tabBarItem.scrollEdgeAppearance = navController.tabBarItem.standardAppearance
        
        return navController
    }
}
