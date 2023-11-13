//
//  UICustomButton.swift
//  ForDiscovery2.0
//
//  Created by Efekan Güvendik on 12.11.2023.
//

import Foundation
import UIKit

class customButtons : UIButton {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setConfig()
    }
    func setConfig(){
        layer.borderColor = UIColor.blue.cgColor
        layer.borderWidth = 2
        layer.cornerRadius = 6.0
    }
    func touchIn () {
        UIView.animate (withDuration: 0.1, delay: 0, options: [.allowUserInteraction,
                                                               .curveEaseIn], animations: {
                                                                   self.transform = .init(scaleX: 0.9, y: 0.9)
                                                               }, completion: nil)
    }
    func touchEnd () {
        UIView.animate (withDuration: 0.1, delay: 0, options: [.allowUserInteraction,
                                                               .curveEaseOut], animations: {
                                                                   self.transform = .identity
                                                               }, completion: nil)
    }
    override func touchesBegan (_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan (touches, with: event)
        touchIn ()
    }
    override func touchesEnded (_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded (touches, with: event)
        touchEnd ()
    }
}


