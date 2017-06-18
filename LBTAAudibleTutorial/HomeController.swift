//
//  HomeController.swift
//  LBTAAudibleTutorial
//
//  Created by Kevin Quisquater on 18/06/2017.
//  Copyright © 2017 Kevin Quisquater. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = Constants.ViewControllersTitles.home
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Sign Out", style: .plain, target: self, action: #selector(handleSignOut))
        
        let imageView = UIImageView(image: UIImage(named: Constants.ImageNames.homeScreenshot))
        view.addSubview(imageView)
        imageView.anchor(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 64, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
    
    func handleSignOut() {
        UserDefaults.standard.setIsLoggedIn(value: false)
        
        let loginController = LoginViewController()
        present(loginController, animated: true, completion: nil)
    }
}
