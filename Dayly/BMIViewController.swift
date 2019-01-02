//
//  BMIViewController.swift
//  Dayly
//
//  Created by Srijit Boinapally on 8/12/19.
//  Copyright © 2019 Srijit. All rights reserved.
//

import UIKit

class BMIViewController: UIViewController {

  
    @IBOutlet weak var cont: UIButton!
    
    @IBOutlet weak var lowBMI: UITextField!
    
    @IBOutlet weak var highBMI: UITextField!
    
    @IBOutlet weak var lowCaloric: UITextField!
    
    @IBOutlet weak var highCaloric: UITextField!
    
    @IBOutlet weak var DiaLowBMI: UITextField!
    
    @IBOutlet weak var DiaHighBMI: UITextField!
    
    @IBOutlet weak var DiaLowCaloric: UITextField!
    
    @IBOutlet weak var DiaHighCaloric: UITextField!
    
    @IBOutlet weak var HBPlowBMI: UITextField!
    
    @IBOutlet weak var HPLhighBMI: UITextField!
    
    @IBOutlet weak var HBPLowCaloric: UITextField!
    
    @IBOutlet weak var HBPHighCaloric: UITextField!
    
    @IBOutlet weak var HBPDialow: UITextField!
    
    @IBOutlet weak var HBPDiahigh: UITextField!
    
    @IBOutlet weak var HBPCaloriclow: UITextField!
    
    @IBOutlet weak var HBPCalorichigh: UITextField!
    
    @IBOutlet weak var kidlowBMI: UITextField!
    
    @IBOutlet weak var kidhighBMI: UITextField!
    
    @IBOutlet weak var kidCalLow: UITextField!
    
    @IBOutlet weak var kidCalHigh: UITextField!
    
    @IBOutlet weak var kidDialow: UITextField!
    
    @IBOutlet weak var kidDiahigh: UITextField!
    
    @IBOutlet weak var kidDiaCalLow: UITextField!
    
    @IBOutlet weak var kidDiaCalHigh: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addDesigns()
    }
    
    func addDesigns(){
        Designs.styleTextField(lowBMI)
        Designs.styleTextField(highBMI)
        Designs.styleTextField(lowCaloric)
        Designs.styleTextField(highCaloric)
        Designs.styleTextField(DiaLowBMI)
        Designs.styleTextField(DiaHighBMI)
        Designs.styleTextField(DiaLowCaloric)
        Designs.styleTextField(DiaHighCaloric)
        Designs.styleTextField(HBPlowBMI)
        Designs.styleTextField(HPLhighBMI)
        Designs.styleTextField(HBPLowCaloric)
        Designs.styleTextField(HBPHighCaloric)
        Designs.styleTextField(HBPDialow)
        Designs.styleTextField(HBPDiahigh)
        Designs.styleTextField(HBPCaloriclow)
        Designs.styleTextField(HBPCalorichigh)
        Designs.styleTextField(kidlowBMI)
        Designs.styleTextField(kidhighBMI)
        Designs.styleTextField(kidCalLow)
        Designs.styleTextField(kidCalHigh)
        Designs.styleTextField(kidDialow)
        Designs.styleTextField(kidDiahigh)
        Designs.styleTextField(kidDiaCalLow)
        Designs.styleTextField(kidDiaCalHigh)
        Designs.styleFilledButton(cont)
    }
    
    @IBAction func getValues(_ sender: Any) {
      
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
