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
    
    @IBOutlet weak var availableForAll: UIButton!
    
    @IBOutlet weak var availableForSome: UIButton!
    
    @IBOutlet weak var contactMe: UIButton!
    
    @IBOutlet weak var contactOffice: UIButton!
    
    @IBOutlet weak var socialMedia: UIButton!
    
    @IBOutlet weak var TOS: UIButton!
    var unchecked = UIImage(named: "25235")
    var checked = UIImage(named:"tick-box-png-checked-checkbox-icon-png-50-px-1600")
     let image  = UIImage(named:"icons8-left-100-2")
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
        back.setImage(image?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        back.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                      blue: 252/255, alpha: 1)
        maleButton.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        femaleButton.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        otherButton.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        boardButton.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        noBoardButton.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        nonBoardButton.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
         availableForAll.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        availableForSome.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        contactMe.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        contactOffice.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        socialMedia.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        TOS.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        
        maleButton.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                            blue: 252/255, alpha: 1)
        femaleButton.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                              blue: 252/255, alpha: 1)
        otherButton.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                             blue: 252/255, alpha: 1)
        boardButton.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                             blue: 252/255, alpha: 1)
        noBoardButton.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                               blue: 252/255, alpha: 1)
        nonBoardButton.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                                blue: 252/255, alpha: 1)
        availableForAll.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                                 blue: 252/255, alpha: 1)
        availableForSome.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                                  blue: 252/255, alpha: 1)
        contactMe.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                           blue: 252/255, alpha: 1)
        contactOffice.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                               blue: 252/255, alpha: 1)
        socialMedia.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                             blue: 252/255, alpha: 1)
        TOS.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                     blue: 252/255, alpha: 1)
        
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
