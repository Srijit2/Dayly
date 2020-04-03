//
//  Designs.swift
//  Dayly
//
//  Created by Srijit Boinaplly on 7/25/19.
//  Copyright © 2019 Srijit. All rights reserved.
//

import Foundation
import UIKit

class Designs{
    
    static func styleTextField(_ textfield:UITextField){
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: textfield.frame.height - 2,
                                  width: textfield.frame.width, height: 2)
        bottomLine.backgroundColor = UIColor.init(red: 3/255, green: 132/255,
                                                  blue: 252/255, alpha: 1).cgColor
        
        textfield.borderStyle = .none
        
        textfield.layer.addSublayer(bottomLine)
    }
    
    static func styleFilledButton(_ button:UIButton){
        button.backgroundColor = UIColor.init(red: 3/255, green: 132/255,
                                              blue: 252/255, alpha: 1)
        button.layer.cornerRadius = button.frame.size.height/10
        button.tintColor = UIColor.white
    }
    
    static func facebookButton(_ button:UIButton){
        button.backgroundColor = UIColor.init(red: 3/255, green: 132/255,
                                              blue: 252/255, alpha: 1)
        button.layer.cornerRadius = button.frame.size.height/2
        button.tintColor = UIColor.white
    }
    
    static func styleHollowButton(_ button:UIButton){
        button.layer.cornerRadius = button.frame.size.height/10
        button.tintColor = UIColor.black
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.black.cgColor
        
    }

    

}
