//
//  MoreInfoStep2.swift
//  Dayly
//
//  Created by Srijit Boinapally on 8/9/19.
//  Copyright © 2019 Srijit. All rights reserved.
//

import UIKit

class MoreInfoStep2: UIViewController {

    @IBOutlet weak var weightInlbs: UITextField!
    
    @IBOutlet weak var weightInKgs: UITextField!
    
    @IBOutlet weak var heightInInches: UITextField!
    
    @IBOutlet weak var heightInCM: UITextField!
    
    @IBOutlet weak var BMI: UITextField!
    
    @IBOutlet weak var calculateBMI: UIButton!
    
    @IBOutlet weak var nameOfMedicine: UITextField!
    
    @IBOutlet weak var frequency: UITextField!
    
    @IBOutlet weak var cont: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
