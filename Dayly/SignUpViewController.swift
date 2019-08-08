//
//  SignUpViewController.swift
//  Dayly
//
//  Created by Srijit Boinaplly on 7/17/19.
//  Copyright © 2019 Srijit. All rights reserved.
//

import UIKit
import Firebase

class SignUpViewController: ViewController {

   
//    @IBOutlet weak var login: UIButton!
//    @IBOutlet weak var signup: UIButton!
//    @IBOutlet weak var passwordConfirm: UITextField!
//    @IBOutlet weak var email: UITextField!
//    @IBOutlet weak var password: UITextField!
    
    
    @IBOutlet weak var male: UIButton!
    
    @IBOutlet weak var female: UIButton!
    
    @IBOutlet weak var otherGender: UIButton!
    
    @IBOutlet weak var MD: UIButton!
    
    @IBOutlet weak var Vistor: UIButton!
    
    @IBOutlet weak var Patient: UIButton!
    
    @IBOutlet weak var TOS: UIButton!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var DOBMonth: UITextField!
    
    
    @IBOutlet weak var DOBDay: UITextField!
    
    @IBOutlet weak var DOBYear: UITextField!
    
 
    @IBOutlet var LabelColor: [UILabel]!
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var back: UIButton!
    var maleButton = false
    var femaleButton = false
    var otherButton = false
    var MDButton = false
    var vistorButton = false
    var patientButton = false
    var tosButton = false
    var unchecked = UIImage(named: "25235")
    var checked = UIImage(named:"tick-box-png-checked-checkbox-icon-png-50-px-1600")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addDesigns()
        let image  = UIImage(named:"icons8-left-24")
        back.setImage(image?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        back.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                      blue: 252/255, alpha: 1)
    }
    
    @IBAction func maleSwitch(_ sender: Any) {
        if maleButton{
            male.setBackgroundImage(unchecked, for: .normal)
            maleButton = false
        }else{
            male.setBackgroundImage(checked, for: .normal)
            maleButton = true
            female.setBackgroundImage(unchecked, for: .normal)
            femaleButton = false
            otherGender.setBackgroundImage(unchecked, for: .normal)
            otherButton = false
        }
    }
    
    @IBAction func femaleSwitch(_ sender: Any) {
        if femaleButton{
            female.setBackgroundImage(unchecked, for: .normal)
            femaleButton = false
        }else{
            female.setBackgroundImage(checked, for: .normal)
            femaleButton = true
            male.setBackgroundImage(unchecked, for: .normal)
            maleButton = false
            otherGender.setBackgroundImage(unchecked, for: .normal)
            otherButton = false
        }
    }
    @IBAction func otherSwitch(_ sender: Any) {
        if otherButton{
            otherGender.setBackgroundImage(unchecked, for: .normal)
            otherButton = false
        }else{
            otherGender.setBackgroundImage(checked, for: .normal)
            otherButton = true
            male.setBackgroundImage(unchecked, for: .normal)
            maleButton = false
            female.setBackgroundImage(unchecked, for: .normal)
            femaleButton = false
        }
    }
    
    @IBAction func MDSwitch(_ sender: Any) {
        if MDButton{
            MD.setBackgroundImage(unchecked, for: .normal)
            MDButton = false
        }else{
            MD.setBackgroundImage(checked, for: .normal)
            MDButton = true
            Vistor.setBackgroundImage(unchecked, for: .normal)
            vistorButton = false
            Patient.setBackgroundImage(unchecked, for: .normal)
            patientButton = false
        }
    }
    
    @IBAction func VisitorButton(_ sender: Any) {
        if vistorButton{
            Vistor.setBackgroundImage(unchecked, for: .normal)
            vistorButton = false
        }else{
            Vistor.setBackgroundImage(checked, for: .normal)
            vistorButton = true
            MD.setBackgroundImage(unchecked, for: .normal)
            MDButton = false
            Patient.setBackgroundImage(unchecked, for: .normal)
            patientButton = false
        }
    }
    
    @IBAction func patientSwitch(_ sender: Any) {
        if patientButton{
            Patient.setBackgroundImage(unchecked, for: .normal)
            patientButton = false
        }else{
            Patient.setBackgroundImage(checked, for: .normal)
            patientButton = true
            MD.setBackgroundImage(unchecked, for: .normal)
            MDButton = false
            Vistor.setBackgroundImage(unchecked, for: .normal)
            vistorButton = false
        }
    }
    
    @IBAction func terms(_ sender: Any) {
        if tosButton{
            TOS.setBackgroundImage(unchecked, for: .normal)
            tosButton = false
        }else{
            TOS.setBackgroundImage(checked, for: .normal)
            tosButton = true
        }
    }
    func addDesigns(){
        Designs.styleTextField(email)
        Designs.styleTextField(password)
        Designs.styleTextField(username)
        Designs.styleTextField(DOBDay)
        Designs.styleTextField(DOBMonth)
        Designs.styleTextField(DOBYear)

        Designs.styleFilledButton(nextButton)
        Designs.styleHollowButton(back)
    }
    
    
 
    @IBAction func createUser(_ sender: Any) {
        let db = Firestore.firestore()
        if false {
            let alertController = UIAlertController(title: "Password Incorrect", message: "Please re-type password", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
        else{
            let emailID = email.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            Auth.auth().createUser(withEmail: email.text!, password: password.text!){ (user, error) in
                if error == nil {
                    db.collection("users").addDocument(data: ["email": self.email.text!, "username":self.username.text!, "password": self.password.text!, "DOBDay": self.DOBDay.text!,"DOBMonth": self.DOBMonth.text!,"male": self.maleButton, "female": self.femaleButton, "other": self.otherButton, "MD": self.MDButton,"visitor": self.vistorButton,"patient": self.patientButton, "tos": self.tosButton,
                                                              "DOBYear": self.DOBYear.text!,
                                                              "uid": user!.user.uid]){(error) in
                                                                if error != nil {
                                                                    
                                                                }
                                                                
                    }
                    self.performSegue(withIdentifier: "signupToHome", sender: self)
                }
                else{
                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    
                    alertController.addAction(defaultAction)
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
    }
    @IBAction override func signUpAction(_ sender: Any) {
       
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
