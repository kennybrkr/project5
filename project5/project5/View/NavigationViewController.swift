//
//  NavigationViewController.swift
//  project5
//
//  Created by Wendy Barker on 2/19/23.
//

import UIKit




class NavigationViewController: UIViewController {

    @IBOutlet weak var usdLabel: UILabel!
    
    @IBOutlet weak var euroLabel: UILabel!
    
    @IBOutlet weak var yenLabel: UILabel!
    
    @IBOutlet weak var poundLabel: UILabel!
    
    @IBOutlet weak var sheckleLabel: UILabel!
    
    var usd = ""
    var euro = ""
    var yen = ""
    var poundM = ""
    var sheckle = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usdLabel.text = "Amount in USD: \(usd)$"
        euroLabel.text = "\(euro)"
        yenLabel.text = "\(yen)"
        poundLabel.text = "\(poundM)"
        sheckleLabel.text = "\(sheckle)"
        // Do any additional setup after loading the view.
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
