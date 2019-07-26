//
//  StartViewController.swift
//  Dayly
//
//  Created by Srijit Boinaplly on 7/25/19.
//  Copyright © 2019 Srijit. All rights reserved.
//

import UIKit
import Firebase

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
        super.viewDidAppear(animated)
        if Auth.auth().currentUser != nil {
            self.performSegue(withIdentifier: "alreadyLoggedIn", sender: nil)
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
