//
//  ViewController.swift
//  project5
//
//  Created by Kenneth Barker on 2/19/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var euroSwitch: UISwitch!
    @IBOutlet weak var yenSwitch: UISwitch!
    @IBOutlet weak var poundSwitch: UISwitch!
    @IBOutlet weak var shecklesSwitch: UISwitch!
    @IBOutlet weak var errorLabel: UILabel!
    
    var converterlogic = converterLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func navigate(_ sender: UIButton) {
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
            
            navigation.usd = textField.text!
            converterlogic.findConverts(dollar: dollar!)
            if (euroSwitch.isOn == true) {
                navigation.euro = converterlogic.euroStringFind()
            }
            if (yenSwitch.isOn == true) {
                navigation.yen = converterlogic.yenStringFind()
            }
            if (poundSwitch.isOn == true) {
                navigation.poundM = converterlogic.poundStringFind()
            }
            if (shecklesSwitch.isOn == true) {
                navigation.sheckle = converterlogic.sheckleStringFind()
            }
        }
    }
}
