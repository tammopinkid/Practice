//
//  RoundLabel.swift
//  Practice
//
//  Created by Kamonwat Rojjanadechakul on 11/28/2560 BE.
//  Copyright © 2560 Benjarat Saeang. All rights reserved.
//

import UIKit

@IBDesignable
class RoundLabel: UILabel {

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }

}
