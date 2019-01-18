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
        let touchPoint = touch.location(in: self)
        _ = updateValue(touch: touch, for: touchPoint)
        sendActions(for: [.touchDown, .valueChanged])
        print(touchPoint)
        return true
    }
    
    override func continueTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
        let touchPoint = touch.location(in: self)
        if bounds.contains(touchPoint) {
            sendActions(for: [.touchDragInside, .valueChanged])
            _ = updateValue(touch: touch, for: touchPoint)
            print(touchPoint)
        } else {
            sendActions(for: [.touchDragOutside])
        }
        return true
    }
    
    override func endTracking(_ touch: UITouch?, with event: UIEvent?) {
        guard let touch = touch else { return }
        let touchPoint = touch.location(in: self)
        if bounds.contains(touchPoint) {
            sendActions(for: [.touchUpInside])
            sendActions(for: [.primaryActionTriggered])
            _ = updateValue(touch: touch, for: touchPoint)
            print(touchPoint)
        } else {
            sendActions(for: [.touchUpOutside])
        }
    }
    
    override func cancelTracking(with event: UIEvent?) {
        super.cancelTracking(with: event)
    }

    private func updateValue(touch: UITouch, for location: CGPoint) {
        let touchPoint = touch.location(in: self)
        let center = CGPoint(x: bounds.midX, y: bounds.midY)
        
//        let xDistanceFromCenter = location.x - center.x
//        let offset = xDistanceFromCenter / center.x
//        print("OFFSET: \(offset)")
        
        if touchPoint.x > center.x {
            vc.lockImage?.image = unlocked
            backgroundColor = .black
        } else {
            vc.lockImage?.image = locked
            backgroundColor = .lightGray
        }
    }

    let vc = LockViewController()
    let unlocked = UIImage(named: "Unlocked")!
    let locked = UIImage(named: "Locked")!
    
//    private func updateValue(location: CGPoint) {
////        let startingPoint = CGPoint(x: bounds.minX, y: bounds.minY)
////        let endingPoint = CGPoint(x: bounds.midX, y: bounds.midY)
////
////        print(startingPoint)
////        print(endingPoint)
////
////        if location > endingPoint {
////            navigationItem.rightBarButtonItem = lockViewController.resetButton
////        } else {
////            navigationItem.rightBarButtonItem = nil
////        }
//    }
    
}
