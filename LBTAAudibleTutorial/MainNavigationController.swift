//
//  MainNavigationController.swift
//  LBTAAudibleTutorial
//
//  Created by Kevin Quisquater on 18/06/2017.
//  Copyright © 2017 Kevin Quisquater. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        if isLoggedIn() {
            let homeController = HomeController()
            viewControllers = [homeController]
        } else {
            perform(#selector(showLoginController), with: nil, afterDelay: 0.01)
        }
    }
    
    fileprivate func isLoggedIn() -> Bool {
        return UserDefaults.standard.isLoggedIn()
    }
    
    func showLoginController() {
        let loginViewController = LoginViewController()
        
        present(loginViewController, animated: true, completion: {
            
        })
    }
}
