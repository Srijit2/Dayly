//
//  MoreInfoViewController.swift
//  Dayly
//
//  Created by Srijit Boinaplly on 8/5/19.
//  Copyright © 2019 Srijit. All rights reserved.
//

import UIKit

class MoreInfoViewController: UIViewController {

    @IBOutlet weak var weightInPounds: UITextField!
    
    @IBOutlet weak var weightInKG: UITextField!
    
    @IBOutlet weak var heightInInches: UITextField!
    
    @IBOutlet weak var heightInCm: UITextField!
    
    @IBOutlet weak var calculateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateBMI(_ sender: Any) {
        
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
