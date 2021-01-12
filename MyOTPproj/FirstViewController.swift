//
//  FirstViewController.swift
//  MyOTPproj
//
//  Created by Admin on 02/01/21.
//  Copyright © 2021 Admin. All rights reserved.
//

import UIKit
import UserNotifications

class FirstViewController: UIViewController {

    @IBOutlet var PhoneNumber: UITextField!
    
    @IBOutlet var Btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        PhoneNumber.layer.cornerRadius = 8.0
         
        Btn.layer.cornerRadius = 8.0

        // Do any additional setup after loading the view.
    }
    
    @IBAction func BtnClicked(_ sender: UIButton) {
        
       let center = UNUserNotificationCenter.current()
       
       let content = UNMutableNotificationContent()
       content.title = "Message"
       content.body = "Your one time OTP is 1104"
       content.sound = .default
       
       
       let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
       
       let request = UNNotificationRequest(identifier: "reminder", content: content, trigger: trigger)
       
       center.add(request) { (error) in
           if error != nil {
               print("Error = \(error?.localizedDescription ?? "error local notification")")
           }

       }

}
    
}
