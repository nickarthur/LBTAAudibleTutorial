//
//  UserDefaults+Helpers.swift
//  LBTAAudibleTutorial
//
//  Created by Kevin Quisquater on 18/06/2017.
//  Copyright © 2017 Kevin Quisquater. All rights reserved.
//

import Foundation

extension UserDefaults {
    func setIsLoggedIn(value: Bool) {
        set(value, forKey: Constants.UserDefaultsKeys.isLoggedIn)
        synchronize()
    }
    
    func isLoggedIn() -> Bool {
        return bool(forKey: Constants.UserDefaultsKeys.isLoggedIn)
    }
    
    
}
