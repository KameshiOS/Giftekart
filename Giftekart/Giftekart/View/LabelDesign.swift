//
//  LabelDesign.swift
//  Giftekart
//
//  Created by Kamesh on 10/12/17.
//  Copyright © 2017 fashionexpress. All rights reserved.
//

import UIKit

@IBDesignable class LabelDesign: UILabel {

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            updateView()
        }
    }
    @IBInspectable var borderColor: UIColor? {
        didSet {
            updateView()
        }
    }
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            updateView()
        }
    }
    func updateView() {
        layer.cornerRadius = cornerRadius
        layer.borderColor = borderColor?.cgColor
        layer.borderWidth = borderWidth
        clipsToBounds = true
    }
}
