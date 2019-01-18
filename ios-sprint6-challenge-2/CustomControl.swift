//
//  CustomControl.swift
//  ios-sprint6-challenge-2
//
//  Created by David Doswell on 1/18/19.
//  Copyright © 2019 David Doswell. All rights reserved.
//

import UIKit

class CustomControl: UIControl {
    
    override func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
        
        return true
    }
    
    override func continueTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
        
        return true
    }
    
    override func endTracking(_ touch: UITouch?, with event: UIEvent?) {
        
    }
    
    override func cancelTracking(with event: UIEvent?) {
    
    }
    
    
}
