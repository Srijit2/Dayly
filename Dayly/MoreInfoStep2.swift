//
//  MoreInfoStep2.swift
//  Dayly
//
//  Created by Srijit Boinapally on 8/9/19.
//  Copyright © 2019 Srijit. All rights reserved.
//
import Firebase
import UIKit

class MoreInfoStep2: UIViewController {
//let db = Firestore.firestore()
    @IBOutlet weak var weightInlbs: UITextField!
    
    @IBOutlet weak var weightInKgs: UITextField!
    
    @IBOutlet weak var heightInInches: UITextField!
    
    @IBOutlet weak var heightInCM: UITextField!
    
    @IBOutlet weak var BMI: UITextField!
    
    @IBOutlet weak var calculateBMI: UIButton!
    
    @IBOutlet weak var nameOfMedicine: UITextField!
    
    @IBOutlet weak var frequency: UITextField!
    
    @IBOutlet weak var cont: UIButton!
    @IBOutlet weak var back: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let user = Auth.auth().currentUser
//        if let user = user{
//
//let id = user.uid
//        // Do any additional setup after loading the view.
//        db.collection("users").whereField("uid", isEqualTo: id).getDocuments{ (snapshot, error) in
//
        //if error != nil{
//                print(error)
//            }else{
//                for document in (snapshot?.documents)!{
//                    let weight = document.data()["weightInlbs"]
//                    self.weightInlbs.text = weight as? String
//                    let height = document.data()["heightInInches"]
//                    self.heightInInches.text = height as? String
//                    let BMI = document.data()["BMI"]
//                    self.BMI.text = BMI as? String
//                    let med = document.data()["Medicine"]
//                    self.nameOfMedicine.text = med as? String
//                    let fre = document.data()["frequency"]
//                    self.frequency.text = fre as? String
//
//                }
//
//            }
//            }
//        }
        addDesigns()
        let image  = UIImage(named:"icons8-left-100-2")
        back.setImage(image?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        back.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                            blue: 252/255, alpha: 1)
    }
    
    @IBAction func calcBMI(_ sender: Any) {
        var weight:Double?
        weight = 0
        if ( (weightInlbs.text! != "")){
            if(weightInlbs != nil){
            weight = Double(weightInlbs!.text!)
            print("end")
            }
        }else if false {
//            if(weightInKgs != nil){
//            weight = Double(weightInlbs!.text!)
//            weight = weight! * 2.20462
//            print("g")
        
        }else{
            let alertController = UIAlertController(title: "No valid weight", message: "Please fill a weight field", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
            print("else")
        }
        var height:Double?
        height = 0
        if  heightInInches.text! != "" {
            if(heightInInches != nil){
            height = Double(heightInInches!.text!)
            }
        }else if
           false
    {
//            if(heightInCM != nil){
//            height = Double(heightInCM!.text!)
//            height = weight! * 2.54
//            print("cm")
        
        }else{
            let alertController = UIAlertController(title: "No valid height", message: "Please fill a height field", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
            print("dead")
            
        }
        if (weight != nil) && height != nil{
        let BMIs = (weight!/(height! * height!)) * 703
        var BMIText = BMIs.description
            let B = String(format:"%.2f", BMIs)
            var a = Int(BMIText)
            print(B)
            print(BMIText)
            print(a?.description)
        BMI.text = B
        }
    }
    
    
    @IBAction func getValues(_ sender: Any) {
        var next = true
        if self.weightInlbs.text!.isInt{
            if  Int(self.weightInlbs.text!) ?? 801 <= 800 && Int(self.weightInlbs.text!) ?? 9 >= 10{
                next = true
            }else{
                next = false
                let alertController = UIAlertController(title: "Error", message: "Please provide a vaild weight", preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
                return
            }
        }else{
            next = false
            let alertController = UIAlertController(title: "Error", message: "Please provide a vaild weight", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
            return
        }
        
        if self.heightInInches.text!.isInt{
            if  Int(self.heightInInches.text!) ?? 101 <= 100 && Int(self.heightInInches.text!) ?? 9 >= 10{
                next = true
            }else{
                next = false
                let alertController = UIAlertController(title: "Error", message: "Please provide a vaild height", preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
                return
            }
        }else{
            next = false
            let alertController = UIAlertController(title: "Error", message: "Please provide a vaild height", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
            return
        }
        
        if next{
        let id = (SignUpViewController.ref?.documentID)!
        SignUpViewController.ref!.setData([
            "weightInlbs": self.weightInlbs.text!,
            "weightInKGs": self.weightInKgs.text!,
            "heightInInches": self.heightInInches.text!,
            "heightInCM": self.heightInCM.text!,
            "BMI": self.BMI.text!,
            "Medicine": self.nameOfMedicine.text!,
            "frequency": self.frequency.text!])
        performSegue(withIdentifier: "BMI", sender: self)
        }
    }
    
    func addDesigns() {
        Designs.styleTextField(weightInKgs)
        Designs.styleTextField(weightInlbs)
        Designs.styleTextField(heightInCM)
        Designs.styleTextField(heightInInches)
        Designs.styleTextField(BMI)
        Designs.styleTextField(frequency)
        Designs.styleTextField(nameOfMedicine)
        Designs.styleFilledButton(cont)
        Designs.styleFilledButton(calculateBMI)
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
