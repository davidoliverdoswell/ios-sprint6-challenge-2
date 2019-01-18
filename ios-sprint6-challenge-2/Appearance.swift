//
//  Appearance.swift
//  ios-sprint6-challenge-2
//
//  Created by David Doswell on 1/18/19.
//  Copyright © 2019 David Doswell. All rights reserved.
//

import UIKit

struct Appearance {
    static var black = UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    static var white = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)

    static func setupAppearance() {
        UINavigationBar.appearance().barTintColor = black
        
        let textAttributes = [NSAttributedString.Key.foregroundColor: white, NSAttributedString.Key.font : titleFont(with: .title2, pointSize: 30)]
        
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UIBarButtonItem.appearance().tintColor = white
    }
    
    static func titleFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        let result = UIFont(name: "Ethnocentric", size: pointSize)!
        
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: result)
    }
    
}
