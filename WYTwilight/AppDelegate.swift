//
//  AppDelegate.swift
//  WYTwilight
//
//  Created by mac on 2021/4/3.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = .white
        
        setupConfigModule()
        setupRootViewController()
        
        return true
    }


    
}

extension AppDelegate {
    
    
    func setupConfigModule() {
        
    }
    
    func setupRootViewController() {
        
        let tabItem0 = UITabBarItem(title: "首页", image: Asset.homeUnselected.image, selectedImage: Asset.homeSelected.image.withRenderingMode(.alwaysOriginal))
        let tabItem1 = UITabBarItem(title: "分类", image: Asset.categoryUnselected.image, selectedImage: Asset.categorySelected.image.withRenderingMode(.alwaysOriginal))
        let tabItem2 = UITabBarItem(title: "发现", image: Asset.discoveryUnselected.image, selectedImage: Asset.discoverySelected.image.withRenderingMode(.alwaysOriginal))
        let tabItem3 = UITabBarItem(title: "购物车", image: Asset.shopcartUnselected.image, selectedImage: Asset.shopcartSelected.image.withRenderingMode(.alwaysOriginal))
        let tabItem4 = UITabBarItem(title: "我的", image: Asset.meUnselected.image, selectedImage: Asset.meSelected.image.withRenderingMode(.alwaysOriginal))

        let vc1 = UIViewController()
        let homeNav = UINavigationController(rootViewController: vc1)
        homeNav.tabBarItem = tabItem0
        
        let vc2 = UIViewController()
        let categoryNav = UINavigationController(rootViewController: vc2)
        categoryNav.tabBarItem = tabItem1
        
        let vc3 = DiscoveryViewController()
        let discoveryNav = UINavigationController(rootViewController: vc3)
        discoveryNav.tabBarItem = tabItem2
        
        let vc4 = ShopcartViewController()
        let shopcartNav = UINavigationController(rootViewController: vc4)
        shopcartNav.tabBarItem = tabItem3
        
        let vc5 = ProfileViewController()
        let profileNav = UINavigationController(rootViewController: vc5)
        profileNav.tabBarItem = tabItem4
        
        let rootViewController = UITabBarController()
        rootViewController.viewControllers = [homeNav, categoryNav, discoveryNav, shopcartNav, profileNav]
        
        self.window?.rootViewController = rootViewController
        self.window?.makeKeyAndVisible()
        
    }
    
}
