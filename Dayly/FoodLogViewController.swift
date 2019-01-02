//
//  FoodLogViewController.swift
//  Dayly
//
//  Created by Srijit Boinapally on 8/13/19.
//  Copyright © 2019 Srijit. All rights reserved.
//

import UIKit

class FoodLogViewController: UIViewController {

    @IBOutlet weak var mornFood3: UITextField!
    
    @IBOutlet weak var mornFood2: UITextField!
    
    @IBOutlet weak var mornFood1: UITextField!
    
    @IBOutlet weak var mornCal1: UITextField!
    
    @IBOutlet weak var mornCal2: UITextField!
    
    @IBOutlet weak var mornCal3: UITextField!
    
    @IBOutlet weak var afterFood1: UITextField!
    
    @IBOutlet weak var afterFood2: UITextField!
    
    @IBOutlet weak var afterFood3: UITextField!
    
    @IBOutlet weak var afterCal1: UITextField!
    
    @IBOutlet weak var afterCal2: UITextField!
    
    @IBOutlet weak var afterCal3: UITextField!
    
    @IBOutlet weak var nightFood1: UITextField!
    
    @IBOutlet weak var nightFood2: UITextField!
    
    @IBOutlet weak var nightFood3: UITextField!
    
    @IBOutlet weak var nightCal1: UITextField!
    
    @IBOutlet weak var nightCal2: UITextField!
    
    @IBOutlet weak var nightCal3: UITextField!
    
    @IBOutlet weak var calculate: UIButton!
    
    @IBOutlet weak var total: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        addDesigns()
    }
    
    func addDesigns(){
        Designs.styleTextField(mornFood3)
         Designs.styleTextField(mornFood2)
         Designs.styleTextField(mornFood1)
         Designs.styleTextField(mornCal1)
         Designs.styleTextField(mornCal2)
         Designs.styleTextField(mornCal3)
         Designs.styleTextField(afterFood1)
        Designs.styleTextField(afterFood2)
        Designs.styleTextField(afterFood3)
        Designs.styleTextField(afterCal1)
        Designs.styleTextField(afterCal2)
        Designs.styleTextField(afterCal3)
        Designs.styleTextField(nightFood1)
         Designs.styleTextField(nightFood2)
         Designs.styleTextField(nightFood3)
         Designs.styleTextField(nightCal1)
         Designs.styleTextField(nightCal2)
         Designs.styleTextField(nightCal3)
         Designs.styleTextField(total)
         Designs.styleFilledButton(calculate)
        
    }
    
    @IBAction func quickMaths(_ sender: Any) {
        var cal1 = 0.0
        var cal2 = 0.0
        var cal3 = 0.0
        var cal4 = 0.0
        var cal5 = 0.0
        var cal6 = 0.0
        var cal7 = 0.0
        var cal8 = 0.0
        var cal9 = 0.0
        if self.mornCal1.text!.isDouble{
            cal1 = Double(self.mornCal1.text!) as! Double
        }else{
            let alertController = UIAlertController(title: "Not a vaild input", message: "Please fill a number in each calorie field", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
         if self.mornCal2.text!.isDouble{
            cal2 = Double(self.mornCal2.text!) as! Double
        }else{
            let alertController = UIAlertController(title: "Not a vaild input", message: "Please fill a number in each calorie field", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
        if self.mornCal3.text!.isDouble{
            cal3 = Double(self.mornCal3.text!) as! Double
        }else{
            let alertController = UIAlertController(title: "Not a vaild input", message: "Please fill a number in each calorie field", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
        if self.afterCal1.text!.isDouble{
            cal4 = Double(self.afterCal1.text!) as! Double
        }else{
            let alertController = UIAlertController(title: "Not a vaild input", message: "Please fill a number in each calorie field", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
        if self.afterCal2.text!.isDouble{
            cal5 = Double(self.afterCal2.text!) as! Double
        }else{
            let alertController = UIAlertController(title: "Not a vaild input", message: "Please fill a number in each calorie field", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
        if self.afterCal3.text!.isDouble{
            cal6 = Double(self.afterCal3.text!) as! Double
        }else{
            let alertController = UIAlertController(title: "Not a vaild input", message: "Please fill a number in each calorie field", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
        if self.nightCal1.text!.isDouble{
            cal7 = Double(self.nightCal1.text!) as! Double
        }else{
            let alertController = UIAlertController(title: "Not a vaild input", message: "Please fill a number in each calorie field", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
        if self.nightCal2.text!.isDouble{
            cal8 = Double(self.nightCal2.text!) as! Double
        }else{
            let alertController = UIAlertController(title: "Not a vaild input", message: "Please fill a number in each calorie field", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
        if self.nightCal3.text!.isDouble{
            cal9 = Double(self.nightCal3.text!) as! Double
        }else{
            let alertController = UIAlertController(title: "Not a vaild input", message: "Please fill a number in each calorie field", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
        self.total.text! = (cal1 + cal2 + cal3 + cal4 + cal5 + cal6 + cal7 + cal8 + cal9).description
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


extension String {
    var isDouble: Bool {
        return Double(self) != nil
    }
}
