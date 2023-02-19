//
//  ViewController.swift
//  project5
//
//  Created by Wendy Barker on 2/19/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var euroSwitch: UISwitch!
    
    @IBOutlet weak var yenSwitch: UISwitch!
    
    @IBOutlet weak var poundSwitch: UISwitch!
    
    @IBOutlet weak var shecklesSwitch: UISwitch!
    
    @IBOutlet weak var errorLabel: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func navigate(_ sender: UIButton) {
        //let navigateController = NavigationViewController()
        //self.present(navigateController, animated: true, completion: nil)
        //errorLabel.text = "This Works"
        if (Int(textField.text!) == nil) {
            errorLabel.text = "Error, Please Enter an Int"
        } else {
            self.performSegue(withIdentifier: "toNav", sender: self)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNav" {
            let navigation = segue.destination as! NavigationViewController
            let dollar = Double(textField.text!)
            let euro = dollar! * 0.93
            let yen = dollar! * 134.33
            let poundM = dollar! * 0.83
            let sheckle = dollar! * 3.55
            
            navigation.usd = textField.text!
            if (euroSwitch.isOn == true) {
                navigation.euro = "Amount in Euros: " + String(round(euro))
            }
            if (yenSwitch.isOn == true) {
                navigation.yen = "Amount in Yen: " + String(round(yen))
            }
            if (poundSwitch.isOn == true) {
                navigation.poundM = "Amount in Pounds: " + String(round(poundM))
            }
            if (shecklesSwitch.isOn == true) {
                navigation.sheckle = "Amount in Shekels: " + String(round(sheckle))
            }            
        }
    }
}
