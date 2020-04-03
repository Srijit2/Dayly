//
//  StartViewController.swift
//  Dayly
//
//  Created by Srijit Boinaplly on 7/25/19.
//  Copyright © 2019 Srijit. All rights reserved.
//

import UIKit
import Firebase
import FBSDKLoginKit

class StartViewController: ViewController {
    
        static var ref: DocumentReference? = nil
    
    var red = 0
    var blue = 0
    var green = 0

    @IBOutlet weak var D: UILabel!
    
    @IBOutlet weak var A: UILabel!
    
    @IBOutlet weak var Y: UILabel!
    
    @IBOutlet weak var L: UILabel!
    
    @IBOutlet weak var Ys: UILabel!
    
    
    
    @IBOutlet weak var login: UIButton!
    
    @IBOutlet weak var signup: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
        addDesign()
        setUpAnimation()
    }
    @IBOutlet weak var colorView: UIView!
    
    func setUpAnimation(){
        red = 168
        blue = 121
        green = 50
        var D = UILabel()
        var pickColor  = 0
        colorView.backgroundColor = UIColor.init(red: 0/255, green: 240/255, blue: 240/255, alpha: 1)
        colorView.frame = CGRect(x: 0, y: 0, width: 500, height: 448)
        D.frame = CGRect(x: 100, y: 100, width: 20, height: 20)
        D.text = "D"
       // view.addSubview(colorView)
 //       if(pickColor == 0){
        UIView.animate(withDuration: 10, delay: 0, options: [.repeat, .autoreverse],
                       animations: {
                        self.colorView.backgroundColor = UIColor.init(red: 0/255, green: 280/255, blue: 240/255, alpha: 1)
                        
                        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {
                            self.colorView.backgroundColor = UIColor.init(red: 0/255, green: 120/255, blue: 240/255, alpha: 1)
                        })
                       
                        
                        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {
                            self.colorView.backgroundColor = UIColor.init(red: 0/255, green: 60/255, blue: 240/255, alpha: 1)
                        })
                        
                        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {
                            self.colorView.backgroundColor = UIColor.init(red: 60/255, green: 0/255, blue: 240/255, alpha: 1)
                        })
                        
          

        }, completion: nil)

//        }
//        UIView.animate(withDuration: 5, delay: 0, options: [.repeat, .autoreverse],
//                       animations: {
//                        self.colorView.backgroundColor = UIColor.init(red: 168/255, green: 50/255, blue: 101/255, alpha: 1)
//        }, completion: nil)
    }
    
    
    @IBOutlet weak var header: UILabel!
    
    func addDesign(){
        Designs.styleFilledButton(login)
        Designs.styleHollowButton(signup)
       header.textColor = .white
//        A.font = UIFont.boldSystemFont(ofSize: 32.0)
//        Y.font = UIFont.boldSystemFont(ofSize: 32.0)
//        L.font = UIFont.boldSystemFont(ofSize: 32.0)
//        Ys.font = UIFont.boldSystemFont(ofSize: 32.0)
    }
    
    override func viewDidAppear(_ animated: Bool){
//        super.viewDidAppear(animated)
//        if Auth.auth().currentUser != nil {
//           self.performSegue(withIdentifier: "test", sender: nil)
//        }
    }
    
//    @objc func handleSignInWithFacebookButtonTapped() {
////        hud.textLabel.text = "Logging in with Facebook..."
////        hud.show(in: view, animated: true)
//        let loginManager = LoginManager()
//        loginManager.logIn(readPermissions: [.publicProfile, .email], viewController: self) { (result) in
//            switch result {
//            case .success(grantedPermissions: _, declinedPermissions: _, token: _):
//                print("Succesfully logged in into Facebook.")
//                self.signIntoFirebase()
//            case .failed(let err):
//                Service.dismissHud(self.hud, text: "Error", detailText: "Failed to get Facebook user with error: \(err)", delay: 3)
//            case .cancelled:
//                Service.dismissHud(self.hud, text: "Error", detailText: "Canceled getting Facebook user.", delay: 3)
//            }
//        }
//    }
    
//        fileprivate func signIntoFirebase() {
//            guard let authenticationToken = AccessToken.current?.authenticationToken else { return }
//            let credential = FacebookAuthProvider.credential(withAccessToken: authenticationToken)
//            Auth.auth().signIn(with: credential) { (user, err) in
//                if let err = err {
//                    Service.dismissHud(self.hud, text: "Sign up error", detailText: err.localizedDescription, delay: 3)
//                    return
//                }
//                print("Succesfully authenticated with Firebase.")
//                self.fetchFacebookUser()
//            }
//        }
    
    
    
    @IBAction func FacebookButton(_ sender: Any) {
        let fbLoginManager = LoginManager()
        fbLoginManager.logIn(permissions: ["public_profile", "email"], from: self) { (result, error) in
            if let error = error {
                print("Failed to login: \(error.localizedDescription)")
                return
            }
            
            guard let accessToken = AccessToken.current else {
                print("Failed to get access token")
                return
            }
            
            let credential = FacebookAuthProvider.credential(withAccessToken: accessToken.tokenString)
            
            // Perform login by calling Firebase APIs
            Auth.auth().signIn(with: credential, completion: { (user, error) in
                if let error = error {
                    print("Login error: \(error.localizedDescription)")
                    let alertController = UIAlertController(title: "Login Error", message: error.localizedDescription, preferredStyle: .alert)
                    let okayAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(okayAction)
                    self.present(alertController, animated: true, completion: nil)
                    
                    return
                }
                
                // Present the main view
                if let viewController = self.storyboard?.instantiateViewController(withIdentifier: "MainView") {
                    UIApplication.shared.keyWindow?.rootViewController = viewController
                    self.dismiss(animated: true, completion: nil)
                }
                
            })
            
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
