//
//  MDViewController.swift
//  Dayly
//
//  Created by Srijit Boinaplly on 7/28/19.
//  Copyright © 2019 Srijit. All rights reserved.
//

import UIKit
import Firebase

class MDViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var boardText: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var DOBMonth: UITextField!
    
    @IBOutlet weak var DOBDay: UITextField!
    
    @IBOutlet weak var DOBYear: UITextField!
    
    @IBOutlet weak var BoardCertYear: UITextField!
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var back: UIButton!
    
    @IBOutlet weak var boardButton: UIButton!
    
    @IBOutlet weak var noBoardButton: UIButton!
    
    @IBOutlet weak var nonBoardButton: UIButton!
    
    @IBOutlet weak var maleButton: UIButton!
    
    @IBOutlet weak var femaleButton: UIButton!
    
    @IBOutlet weak var otherButton: UIButton!
    
    
    let user = Auth.auth().currentUser
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let user = user{
            let db = Firestore.firestore()
            let id = user.uid
            email.text = user.email
            db.collection("users").whereField("uid", isEqualTo: id).getDocuments{ (snapshot, error) in
                if error != nil{
                    print(error)
                }else{
                    for document in (snapshot?.documents)!{
                        let name = document.data()["username"]
                        self.username.text = name as? String
                        let day = document.data()["DOBDay"]
                        self.DOBDay.text = day as? String
                        let month = document.data()["DOBMonth"]
                        self.DOBMonth.text = month as? String
                        let year = document.data()["DOBYear"]
                        self.DOBYear.text = year as? String
                        let pass = document.data()["password"]
                        self.password.text = pass as? String
                        
                    }

                }
            }
            
        }
           addDesigns()
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
