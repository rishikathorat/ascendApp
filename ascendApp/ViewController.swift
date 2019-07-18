//
//  ViewController.swift
//  ascendApp
//
//  Created by Apple on 7/17/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let emojis = ["🏠": "home", "🧰": "work", "📓": "school", "🚎": "transit"]

    let customMessages = ["home": ["1. Stay calm and don't open the door. 2. Speak through the door. 3. 'I do not consent to your entry'. If police have an arrest warrant signed by a judge, entry is allowed. 4. Refer to the 'Rights' section for more."], "work": ["1. Officers are not allowed to enter your workplace without permission from your manager. 2. You have the right to remain silent. 3. You have the right to ask for a lawyer. 4. Provide only valid papers. 5. Refer to the 'Rights' section for more."], "school": ["1. Know that federal law protects you. 2. Have your superintendent ask for a valid arrest warrant signed by a judge. 3. Request legal review if warrant is not provided."], "transit": ["1. Ask the agents why the vehicle is being stopped. 2. Inform fellow passegers of their rights. 3. You may remain silent, record video, and refuse a search. 4. Provide valid papers if you have them."]]



        @IBAction func showMessage(sender: UIButton) {
            let selectedEmotion = sender.titleLabel?.text

            let emotionArray = customMessages[emojis[selectedEmotion!]!]
            let random = Int.random(in: 0 ..< emotionArray!.count)
            let emojiMessage = emotionArray?[random]

            //          let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[0]
            let alertController = UIAlertController(title: "What You Should Do:", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

            present(alertController, animated: true, completion: nil)
        }


   

}

