//
//  ProfileViewController.swift
//  Giftekart
//
//  Created by Kamesh on 10/12/17.
//  Copyright © 2017 fashionexpress. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var profileTable: UITableView!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var mobileNoLabel: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    
    var loggedInVariable = ["My Orders", "My Reviews", "Notification", "Account Settings", "Giftcare", "Rate App", "Terms & Condition", "Logout"]
    var loggedInIcon = ["myorders", "review", "bell", "settings", "service", "ratings", "terms&conditions", "logout-1"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        profileTable.delegate = self
        profileTable.dataSource = self
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else if section == 1 {
            return 2
        } else {
            return 5
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProfileTableViewCell
            cell1.profileNameLabel.text = loggedInVariable[indexPath.row]
            cell1.profileIcon.image = UIImage(named: loggedInIcon[indexPath.row])
            return cell1
        } else if indexPath.section == 1 {
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProfileTableViewCell
            cell2.profileNameLabel.text = loggedInVariable[indexPath.row + 1]
            cell2.profileIcon.image = UIImage(named: loggedInIcon[indexPath.row + 1])
            return cell2
        } else {
            let cell3 = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProfileTableViewCell
            cell3.profileNameLabel.text = loggedInVariable[indexPath.row + 3]
            cell3.profileIcon.image = UIImage(named: loggedInIcon[indexPath.row + 3])
            return cell3
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            self.performSegue(withIdentifier: "toMyOrders", sender: nil)
        }
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
           return 0
        } else {
            return 20
        }
    }
}
