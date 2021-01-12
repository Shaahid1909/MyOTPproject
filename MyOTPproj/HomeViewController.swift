//
//  HomeViewController.swift
//  MyOTPproj
//
//  Created by Admin on 02/01/21.
//  Copyright © 2021 Admin. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBAction func logoutAction(_ sender: UIButton) {
   
    }
    
     @IBOutlet weak var gifView: UIImageView!
    
     @IBOutlet weak var gifView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
               
        gifView.loadGif(name: "giphy")

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
