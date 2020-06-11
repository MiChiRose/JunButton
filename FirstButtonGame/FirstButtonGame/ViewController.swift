//
//  ViewController.swift
//  FirstButtonGame
//
//  Created by Yura Menschikov on 10/29/18.
//  Copyright © 2018 Yura Menschikov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - show text answer
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    //MARK: - False button action
    @IBAction func falseButtonAction(_ sender: Any) {
        let someAction = UIAlertController(title: "Error", message: "Why not? You did it! :)", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok, thank you :)", style: .default) { (action) in
            //let text = someAction.textFields?.first?.text
            //print(text ?? "nil text")
        }
        //someAction.addTextField(configurationHandler: nil)
        someAction.addAction(action)
        self.present(someAction, animated: true, completion: nil)
        self.answerLabel.text = "False"
    }
    //MARK: - True button action
    @IBAction func trueButtonAction(_ sender: Any) {
        let someAction = UIAlertController(title: "Correct", message: "Yes, y're right! You did it! :)", preferredStyle: .alert)
        let action = UIAlertAction(title: "Thank you :)", style: .default) { (action) in
            let text = someAction.textFields?.first?.text
            print(text ?? "nil text")
        }
        //someAction.addTextField(configurationHandler: nil)
        someAction.addAction(action)
        self.present(someAction, animated: true, completion: nil)
        self.answerLabel.text = "True"
    }
    
   /* func question (title: String, message: String, style: UIAlertController.Style) {
        let someAction = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "Ok", style: .default) { (action) in
            let text = someAction.textFields?.first
            self.answerLabel.text! += (text?.text!)!
        }
        someAction.addAction(action)
        self.present(someAction, animated: true, completion: nil)
    }
    */
}

