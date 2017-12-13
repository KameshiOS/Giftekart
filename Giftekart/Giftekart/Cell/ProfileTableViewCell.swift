//
//  ProfileTableViewCell.swift
//  Giftekart
//
//  Created by Kamesh on 13/12/17.
//  Copyright © 2017 fashionexpress. All rights reserved.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    @IBOutlet weak var profileNameLabel: UILabel!
    @IBOutlet weak var profileIcon: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
