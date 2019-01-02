//
//  Step3ViewController.swift
//  Dayly
//
//  Created by Srijit Boinapally on 8/12/19.
//  Copyright © 2019 Srijit. All rights reserved.
//

import UIKit

class Step3ViewController: UIViewController {
    
    @IBOutlet weak var maintainWeight: UIButton!
    
    @IBOutlet weak var MaintainGoal: UITextField!
    var mainWeight = false
    @IBOutlet weak var sedentary: UIButton!
    var sed = false
    @IBOutlet weak var moderate: UIButton!
    var mod = false
    @IBOutlet weak var active: UIButton!
    var act = false
    @IBOutlet weak var maintainPlan: UIButton!
    
    @IBOutlet weak var loseWeight: UIButton!
    var losWeight = false
    @IBOutlet weak var loseGoal: UITextField!
    
    @IBOutlet weak var sedentaryLose: UIButton!
    var loseSed = false
    @IBOutlet weak var moderateLose: UIButton!
    var loseMod = false
    @IBOutlet weak var activeLose: UIButton!
    var loseAct = false
    @IBOutlet weak var losePlan: UIButton!
    
    @IBOutlet weak var skip: UIButton!
    
    @IBOutlet weak var back: UIButton!
    var unchecked = UIImage(named: "25235")
    var checked = UIImage(named:"tick-box-png-checked-checkbox-icon-png-50-px-1600")
    override func viewDidLoad() {
        super.viewDidLoad()
        maintainWeight.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        
        maintainWeight.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                             blue: 252/255, alpha: 1)
        
        sedentary.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        sedentary.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                             blue: 252/255, alpha: 1)
        
        moderate.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        
        moderate.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                             blue: 252/255, alpha: 1)
        
        active.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        
        active.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                             blue: 252/255, alpha: 1)
        loseWeight.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        
        loseWeight.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                             blue: 252/255, alpha: 1)
        
        sedentaryLose.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        
        sedentaryLose.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                             blue: 252/255, alpha: 1)
        
        moderateLose.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        
        moderateLose.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                             blue: 252/255, alpha: 1)
        activeLose.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        
        activeLose.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                             blue: 252/255, alpha: 1)
        addDesigns()
        let image  = UIImage(named:"icons8-left-100-2")
        back.setImage(image?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        back.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                      blue: 252/255, alpha: 1)
    }
    
    @IBAction func MainSedSwitch(_ sender: Any) {
        if sed{
            sedentary.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            sed = false
        }else{
            sedentary.setImage(checked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            sed = true
            moderate.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            mod = false
            active.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            act = false
        }
    }
    
    @IBAction func modSwitch(_ sender: Any) {
        if mod{
            moderate.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            mod = false
        }else{
            moderate.setImage(checked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            mod = true
            sedentary.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            sed = false
            active.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            act = false
        }
    }
    
    @IBAction func actSwitch(_ sender: Any) {
        if act{
            active.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            act = false
        }else{
            active.setImage(checked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            act = true
            moderate.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            mod = false
            sedentary.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            sed = false
        }
    }
    
    
    @IBAction func loseSedSwitch(_ sender: Any) {
        if loseSed{
            sedentaryLose.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            loseSed = false
        }else{
            sedentaryLose.setImage(checked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            loseSed = true
            moderateLose.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            loseMod = false
            activeLose.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            loseAct = false
        }
        
    }
    
    @IBAction func switchModLose(_ sender: Any) {
        if loseMod{
            moderateLose.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            loseMod = false
        }else{
            moderateLose.setImage(checked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            loseMod = true
            sedentaryLose.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            loseSed = false
            activeLose.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            loseAct = false
        }
    }
    
    @IBAction func switchActLose(_ sender: Any) {
        if loseAct{
            activeLose.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            loseAct = false
        }else{
            activeLose.setImage(checked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            loseAct = true
            moderateLose.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            loseMod = false
            sedentaryLose.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            loseSed = false
        }
    }
    
    
    @IBAction func switchMaintain(_ sender: Any) {
        if mainWeight{
            maintainWeight.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            mainWeight = false
        }else{
            maintainWeight.setImage(checked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            mainWeight = true
            loseWeight.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            losWeight = false
    }
    }
    
        
    @IBAction func loseWeight(_ sender: Any) {
        if losWeight{
            loseWeight.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
           losWeight = false
            
        }else{
            loseWeight.setImage(checked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            losWeight = true
            maintainWeight.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            mainWeight = false
        }
    }
    
    func addDesigns(){
        Designs.styleTextField(MaintainGoal)
        Designs.styleTextField(loseGoal)
        Designs.styleFilledButton(maintainPlan)
        Designs.styleHollowButton(losePlan)
        Designs.styleFilledButton(skip)
    }
    
    @IBAction func seeMaintainPlan(_ sender: Any) {
        if mainWeight {
            if sed || mod || act{
                performSegue(withIdentifier: "Maintain", sender: self)
            }else{
                let alertController = UIAlertController(title: "Please select an activity level", message: "Please select an activity level", preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
            }
        }else{
            let alertController = UIAlertController(title: "Select a Plan", message: "Please select a plan", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
    
   
    @IBAction func losePlan(_ sender: Any) {
        if losWeight {
            if loseSed || loseMod || loseAct{
                performSegue(withIdentifier: "Lose", sender: self)
            }else{
                let alertController = UIAlertController(title: "Please select an activity level", message: "Please select an activity level", preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
            }
        }else{
            let alertController = UIAlertController(title: "Select a Plan", message: "Please select a plan", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
    @IBAction func getValues(_ sender: Any) {
        SignUpViewController.ref!.setData([
            "MaintainGoal": self.MaintainGoal.text!,
            "LoseGoal": self.loseGoal.text!,
            "isMaintain": mainWeight,
            "isLose": losWeight,
            "sedentaryMain": sed,
            "moderateMain": mod,
            "activeMain": act,
            "sedentaryLose": loseSed,
            "moderateLose": loseMod,
            "activeLose" : loseAct,
            ])
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
