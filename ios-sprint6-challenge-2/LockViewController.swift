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
    @IBOutlet weak var lockImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lockImage.image = UIImage(named: "Locked")
    }

    @IBAction func reset(_ sender: UIBarButtonItem) {
        lockImage.image = UIImage(named: "Locked")
        navigationItem.rightBarButtonItem = nil
    }
}
