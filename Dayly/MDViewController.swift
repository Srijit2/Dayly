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
let db = Firestore.firestore()
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
    var board = false
    @IBOutlet weak var noBoardButton: UIButton!
    var noBoard = false
    @IBOutlet weak var nonBoardButton: UIButton!
    var nonBoard = false
    @IBOutlet weak var maleButton: UIButton!
    var male = false
    @IBOutlet weak var femaleButton: UIButton!
    var female = false
    @IBOutlet weak var otherButton: UIButton!
    var other = false
    @IBOutlet weak var availableForAll: UIButton!
    var availableAll = false
    @IBOutlet weak var availableForSome: UIButton!
    var availableSome = false
    @IBOutlet weak var contactMe: UIButton!
    var contactMeButton = false
    @IBOutlet weak var contactOffice: UIButton!
    var contactOfficeButton = false
    @IBOutlet weak var socialMedia: UIButton!
    var socialButton = false
    @IBOutlet weak var TOS: UIButton!
    var tos = false
    var unchecked = UIImage(named: "25235")
    var checked = UIImage(named:"tick-box-png-checked-checkbox-icon-png-50-px-1600")
     let image  = UIImage(named:"icons8-left-100-2")
    let user = Auth.auth().currentUser
    
    
    @IBAction func certYear(_ sender: Any) {
        if board{
            boardButton.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            board = false
        }else{
            boardButton.setImage(checked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            board = true
            noBoardButton.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            noBoard = false
            nonBoardButton.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            nonBoard = false
        }
    }
    
    @IBAction func noCert(_ sender: Any) {
        if noBoard{
            noBoardButton.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            noBoard = false
        }else{
            noBoardButton.setImage(checked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            noBoard = true
            boardButton.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            board = false
            nonBoardButton.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            nonBoard = false
        }
    }
    
    @IBAction func nonCertYear(_ sender: Any) {
        if nonBoard{
            nonBoardButton.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            nonBoard = false
        }else{
            nonBoardButton.setImage(checked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            nonBoard = true
            boardButton.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            board = false
            noBoardButton.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            noBoard = false
        }
    }
    
    @IBAction func availableAll(_ sender: Any) {
        if availableAll{
            availableForAll.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            availableAll = false
        }else{
            availableForAll.setImage(checked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            availableAll = true
            availableForSome.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            availableSome = false
           
        }
    }
    
    @IBAction func availableSome(_ sender: Any) {
        if availableSome{
            availableForSome.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            availableSome = false
        }else{
            availableForSome.setImage(checked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            availableSome = true
            availableForAll.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            availableAll = false
            
        }
    }
    
    @IBAction func contactMe(_ sender: Any) {
        if contactMeButton{
            contactMe.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            contactMeButton = false
        }else{
            contactMe.setImage(checked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            contactMeButton = true
            contactOffice.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            contactOfficeButton = false
            socialMedia.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            socialButton = false
        }
    }
    
    @IBAction func contactOff(_ sender: Any) {
        if contactOfficeButton{
            contactOffice.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            contactOfficeButton = false
        }else{
            contactOffice.setImage(checked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            contactOfficeButton = true
            contactMe.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            contactMeButton = false
            socialMedia.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            socialButton = false
        }
    }
    
    @IBAction func social(_ sender: Any) {
        if socialButton{
            socialMedia.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            socialButton = false
        }else{
            socialMedia.setImage(checked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            socialButton = true
            contactOffice.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            contactOfficeButton = false
            contactMe.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            contactMeButton = false
        }
    }
    
    @IBAction func tos(_ sender: Any) {
        if tos{
            TOS.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            tos = false
        }else{
            TOS.setImage(checked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            tos = true
        }
    }
    
    @IBAction func maleSwitch(_ sender: Any) {
        if male{
            maleButton.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            male = false
        }else{
            maleButton.setImage(checked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            male = true
            femaleButton.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            female = false
            otherButton.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            other = false
        }
    }
    
    @IBAction func femaleSwitch(_ sender: Any) {
        if female{
            femaleButton.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            female = false
        }else{
            femaleButton.setImage(checked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            female = true
            maleButton.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            male = false
            otherButton.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            other = false
        }
    }
    
    @IBAction func otherSwitch(_ sender: Any) {
        if other{
            otherButton.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
           other = false
        }else{
            otherButton.setImage(checked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            other = true
            femaleButton.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            female = false
            maleButton.setImage(unchecked?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
            male = false
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let user = user{
            
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
        Designs.styleTextField(BoardCertYear)
    }

    @IBAction func getData(_ sender: Any) {
        if let user = user{
            
            let id = (SignUpViewController.ref?.documentID)!
            SignUpViewController.ref!.setData([
                "email": self.email.text!, "username":self.username.text!, "password": self.password.text!, "DOBDay": self.DOBDay.text!,"DOBMonth": self.DOBMonth.text!,"male": self.male, "female": self.female, "other": self.other, "AvailableForAll": self.availableAll,"AvailableForSome": self.availableSome,"ContactMe": self.contactMeButton, "ContactOffice": self.contactOfficeButton,
                "DOBYear": self.DOBYear.text!,
                "SocialMediaAllowed": self.socialButton,
                "yesBoard": self.board,
                "noBoard": self.noBoard,
                "nonBoard": self.nonBoard,
                "whenBoard": self.boardText.text!])
        }
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
