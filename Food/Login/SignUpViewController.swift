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
    
    @IBOutlet weak var tosList: UIButton!
    
    @IBOutlet weak var backButton: UIButton!
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
        self.navigationController?.isNavigationBarHidden = false
        // Do any additional setup after loading the view.
        addDesigns()
        
        let image  = UIImage(named:"icons8-left-100-2")
        backButton.setImage(image?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        backButton.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                      blue: 252/255, alpha: 1)
        male.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        female.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
         otherGender.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
         MD.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
         Patient.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        Vistor.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
         TOS.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
   
         otherGender.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                      blue: 252/255, alpha: 1)
        female.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                      blue: 252/255, alpha: 1)
        otherGender.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                      blue: 252/255, alpha: 1)
        MD.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                      blue: 252/255, alpha: 1)
        Patient.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                      blue: 252/255, alpha: 1)
        Vistor.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                      blue: 252/255, alpha: 1)
        TOS.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                      blue: 252/255, alpha: 1)
        
    }
    
    @IBAction func maleSwitch(_ sender: Any) {
        if maleButton{
            male.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            maleButton = false
        }else{
            male.setImage(checked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            maleButton = true
            female.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            femaleButton = false
            otherGender.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            otherButton = false
        }
    }
    
    @IBAction func femaleSwitch(_ sender: Any) {
        if femaleButton{
            female.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            femaleButton = false
        }else{
            female.setImage(checked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            femaleButton = true
            male.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            maleButton = false
            otherGender.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            otherButton = false
        }
    }
    @IBAction func otherSwitch(_ sender: Any) {
        if otherButton{
            otherGender.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            otherButton = false
        }else{
            otherGender.setImage(checked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            otherButton = true
            male.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            maleButton = false
            female.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            femaleButton = false
        }
    }
    
    @IBAction func MDSwitch(_ sender: Any) {
        if MDButton{
            MD.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            MDButton = false
        }else{
            MD.setImage(checked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            MDButton = true
            Vistor.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            vistorButton = false
            Patient.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            patientButton = false
        }
    }
    
    @IBAction func VisitorButton(_ sender: Any) {
        if vistorButton{
            Vistor.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            vistorButton = false
        }else{
            Vistor.setImage(checked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            vistorButton = true
            MD.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            MDButton = false
            Patient.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            patientButton = false
        }
    }
    
    @IBAction func patientSwitch(_ sender: Any) {
        if patientButton{
            Patient.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            patientButton = false
        }else{
            Patient.setImage(checked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            patientButton = true
            MD.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            MDButton = false
            Vistor.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            vistorButton = false
        }
    }
    
    @IBAction func terms(_ sender: Any) {
        if tosButton{
            TOS.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            tosButton = false
        }else{
            TOS.setImage(checked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
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
        //Designs.styleHollowButton(back)
    }
    
    
 
    @IBAction func createUser(_ sender: Any) {
        var next = true
        let db = Firestore.firestore()
        
        
        if self.DOBDay.text!.isInt{
            if  Int(self.DOBDay.text!) ?? 32 <= 31{
                next = true
            }else{
                next = false
                let alertController = UIAlertController(title: "Error", message: "Please provide a vaild number for day of birth", preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
                return
            }
        }else{
            next = false
            let alertController = UIAlertController(title: "Error", message: "Please provide a vaild number for day of birth", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
            return
        }
        
        if self.DOBMonth.text!.isInt{
            if  Int(self.DOBMonth.text!) ?? 32 <= 12{
                next = true
            }else{
                next = false
                let alertController = UIAlertController(title: "Error", message: "Please provide a vaild number for Month of birth", preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
                return
            }
        }else{
            next = false
            let alertController = UIAlertController(title: "Error", message: "Please provide a vaild number for Month of birth", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
            return
        }
        
        if self.DOBYear.text!.isInt{
            if  Int(self.DOBYear.text!) ?? 2020 <= 2019 && Int(self.DOBYear.text!) ?? 1899 >= 1900{
                next = true
            }else{
                next = false
                let alertController = UIAlertController(title: "Error", message: "Please provide a vaild number for Year of birth", preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
                return
            }
        }else{
            next = false
            let alertController = UIAlertController(title: "Error", message: "Please provide a vaild number for Year of birth", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
            return
        }
        if maleButton || femaleButton || otherButton{
            next = true
        }else{
            next = false
            let alertController = UIAlertController(title: "Error", message: "Please provide a gender", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
            return
        }
        
        if MDButton || vistorButton || otherButton{
            next = true
        }else{
            next = false
            let alertController = UIAlertController(title: "Error", message: "Please provide a position", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
            return
        }
        if tosButton{
            next = true
        }else{
            next = false
            let alertController = UIAlertController(title: "Error", message: "Please accept the TOS", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
            return
        }
        
        if !next {
//            let alertController = UIAlertController(title: "Password Incorrect", message: "Please re-type password", preferredStyle: .alert)
//            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
//
//            alertController.addAction(defaultAction)
//            self.present(alertController, animated: true, completion: nil)
            print(next)
            print(5)
        }
        else{
            print(next)
            Auth.auth().createUser(withEmail: email.text!, password: password.text!){ (user, error) in
                if error == nil {
                    print("here")
                    StartViewController.ref = db.collection("users").document()
                    StartViewController.ref!.setData([
                        "email": self.email.text!, "username":self.username.text!, "password": self.password.text!, "DOBDay": self.DOBDay.text!,"DOBMonth": self.DOBMonth.text!,"male": self.maleButton, "female": self.femaleButton, "other": self.otherButton, "MD": self.MDButton,"visitor": self.vistorButton,"patient": self.patientButton, "tos": self.tosButton,
                        "DOBYear": self.DOBYear.text!,
                        "uid": user!.user.uid])
                    print("now")
                    
//                    SignUpViewController.ref =  db.collection("users").addDocument(data: ["email": self.email.text!, "username":self.username.text!, "password": self.password.text!, "DOBDay": self.DOBDay.text!,"DOBMonth": self.DOBMonth.text!,"male": self.maleButton, "female": self.femaleButton, "other": self.otherButton, "MD": self.MDButton,"visitor": self.vistorButton,"patient": self.patientButton, "tos": self.tosButton,
//                                                              "DOBYear": self.DOBYear.text!,
//                                                              "uid": user!.user.uid]){(error) in
//                                                                if error != nil {
//
//                                                                }
//
//                    }
                    if(self.MDButton){
                        print("x")
                        self.performSegue(withIdentifier: "MD", sender: self)
                        print("x")
                    }else{
                        print("y")
                        self.performSegue(withIdentifier: "signupToHome", sender: self)
                        print("y")
                    }
                }
                else{
                    print("s")
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


extension String {
    var isInt: Bool {
        return Int(self) != nil
    }
}
