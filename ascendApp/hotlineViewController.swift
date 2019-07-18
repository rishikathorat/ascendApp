//
//  hotlineViewController.swift
//  ascendApp
//
//  Created by Apple on 7/18/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class hotlineViewController: UIViewController {

    
    
    
    
    
    //5102414011
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func emergency1(_ sender: Any) {
        //4152001548
        guard let number = URL(string: "tel://" + "5107018278") else { return }
        UIApplication.shared.open(number)
    }
    
    
    @IBAction func emergency2(_ sender: Any) {
        guard let number = URL(string: "tel://" + "5102414011") else { return }
        UIApplication.shared.open(number)
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
