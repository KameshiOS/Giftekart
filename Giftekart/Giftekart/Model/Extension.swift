//
//  Extension.swift
//  Giftekart
//
//  Created by Kamesh on 10/12/17.
//  Copyright © 2017 fashionexpress. All rights reserved.
//

import UIKit

extension UIColor {
    static func rgb(displayP3Red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(displayP3Red: displayP3Red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}
