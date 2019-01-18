//
//  LockViewController.swift
//  ios-sprint6-challenge-2
//
//  Created by David Doswell on 1/18/19.
//  Copyright © 2019 David Doswell. All rights reserved.
//

import UIKit

class LockViewController: UIViewController {
    
    @IBOutlet weak var resetButton: UIBarButtonItem!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.rightBarButtonItem = resetButton
    }

    @IBAction func reset(_ sender: UIBarButtonItem) {
        self.navigationItem.rightBarButtonItem = nil
    }
}
