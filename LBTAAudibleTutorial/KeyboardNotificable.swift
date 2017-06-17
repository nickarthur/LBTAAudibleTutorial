//
//  KeyboardNotificable.swift
//  LBTAAudibleTutorial
//
//  Created by Kevin Quisquater on 17/06/2017.
//  Copyright © 2017 Kevin Quisquater. All rights reserved.
//

import UIKit

protocol KeyboardNotificable {
    func registerForKeyboardNotifications()
    func keyboardWillShow(notification: Notification)
    func keyboardWillHide(notification: Notification)
}

extension KeyboardNotificable where Self: UIViewController {
    func registerForKeyboardNotifications() {
        NotificationCenter.default.addObserver(forName: .UIKeyboardWillShow, object: nil, queue: nil) {
            [unowned self] notification in
            self.keyboardWillShow(notification: notification)
        }
        
        NotificationCenter.default.addObserver(forName: .UIKeyboardWillHide, object: nil, queue: nil) {
            [unowned self] notification in
            self.keyboardWillHide(notification: notification)
        }
    }
}
