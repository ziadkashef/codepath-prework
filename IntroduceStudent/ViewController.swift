//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Ziad Kashef on 1/30/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
        
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        
        // Let's us chose the title we have selected from the segmented control
               let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
               
               // Creating a variable of type string, that holds an introduction. The introduction interpolates the values from the text fields provided.
               // Currently we can only present the information in a print statement. However, this lets us verify that our app is printing out what is intended!
               let introduction = "Hi, I'm \(firstNameTextField.text!) \(lastNameTextField.text!) and a student at \(schoolNameTextField.text!). Currently, I'm in my \(year!) year and have \(numberOfPetsLabel.text!) pets. It is \(morePetsSwitch.isOn) that I'm looking to expand my pet family."
               
               
               // Creates the alert where we pass in our message, which our introduction.
               let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
               
               // A way to dismiss the box once it pops up
               let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
               
               // Passing this action to the alert controller so it can be dismissed
               alertController.addAction(action)
               
               present(alertController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

