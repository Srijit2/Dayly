//
//  LoseViewController.swift
//  Dayly
//
//  Created by Srijit Boinapally on 8/13/19.
//  Copyright © 2019 Srijit. All rights reserved.
//

import UIKit

class LoseViewController: UIViewController {

    @IBOutlet weak var back: UIButton!
    @IBOutlet weak var walk: UITextField!
    
    @IBOutlet weak var run: UITextField!
    
    @IBOutlet weak var calories: UITextField!
    
    @IBOutlet weak var cont: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addDesigns()
        let image  = UIImage(named:"icons8-left-100-2")
        back.setImage(image?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        back.tintColor = UIColor.init(red: 3/255, green: 132/255,
                                      blue: 252/255, alpha: 1)
    }
    func addDesigns(){
        Designs.styleTextField(walk)
        Designs.styleTextField(run)
        Designs.styleTextField(calories)
        Designs.styleFilledButton(cont)
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
