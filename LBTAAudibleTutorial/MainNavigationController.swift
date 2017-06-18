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
        return true
    }
    
    func showLoginController() {
        let loginViewController = LoginViewController()
        
        present(loginViewController, animated: true, completion: {
            
        })
    }
}

class HomeController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = Constants.ViewControllersTitles.home
        
        let imageView = UIImageView(image: UIImage(named: Constants.ImageNames.homeScreenshot))
        view.addSubview(imageView)
        imageView.anchor(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 64, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
}
