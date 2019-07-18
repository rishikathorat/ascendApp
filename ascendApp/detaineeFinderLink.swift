//
//  detaineeFinderLink.swift
//  ascendApp
//
//  Created by Apple on 7/18/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class detaineeFinderLink: UIViewController {

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
            super.viewDidLoad()
            updateTextView()
        }
        
        func updateTextView(){
            let path = "https://locator.ice.gov/odls/#/index"
            let text = textView.text ?? ""
            let attributedString = NSAttributedString.makeHyperLink(for: path, in: text, as: "Website")
            textView.attributedText = attributedString
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
