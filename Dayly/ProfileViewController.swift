//
//  ProfileViewController.swift
//  Dayly
//
//  Created by Srijit Boinapally on 8/13/19.
//  Copyright © 2019 Srijit. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    
    @IBOutlet weak var caloriesEaten: UITextField!
    
    @IBOutlet weak var giveUp: UISegmentedControl!
    
    @IBOutlet weak var minExercise: UITextField!
    
    @IBOutlet weak var stepsWalked: UITextField!
    
    @IBOutlet weak var minGoal: UISegmentedControl!
    
    @IBOutlet weak var foodGoal: UISegmentedControl!
    
    @IBOutlet weak var bloodPressure: UITextField!
    
    @IBOutlet weak var save: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addDesigns()
    }
    
    func addDesigns(){
        Designs.styleTextField(caloriesEaten)
        Designs.styleTextField(minExercise)
        Designs.styleTextField(stepsWalked)
        Designs.styleTextField(bloodPressure)
        Designs.styleFilledButton(save)
    }
    
    @IBAction func save(_ sender: Any) {
        SignUpViewController.ref!.setData([
            "caloriesEaten": self.caloriesEaten.text!,
            "minExercise": self.minExercise.text!,
            "stepsWalked": self.stepsWalked.text!,
            "bloodPressure": self.bloodPressure.text!,
            "giveUp": giveUp.titleForSegment(at: giveUp.selectedSegmentIndex),
            "foodGoal": foodGoal.titleForSegment(at: foodGoal.selectedSegmentIndex),
            "minGoal": minGoal.titleForSegment(at: minGoal.selectedSegmentIndex),
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
