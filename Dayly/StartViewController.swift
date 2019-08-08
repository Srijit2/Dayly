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

    @IBOutlet weak var login: UIButton!
    
    @IBOutlet weak var signup: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addDesign()
    }
    
    func addDesign(){
        Designs.styleFilledButton(login)
        Designs.styleHollowButton(signup)
    }
    
    override func viewDidAppear(_ animated: Bool){
//        super.viewDidAppear(animated)
//        if Auth.auth().currentUser != nil {
//            self.performSegue(withIdentifier: "alreadyLoggedIn", sender: nil)
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
