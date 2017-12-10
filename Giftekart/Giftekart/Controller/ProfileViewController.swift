//
//  ProfileViewController.swift
//  Giftekart
//
//  Created by Kamesh on 10/12/17.
//  Copyright © 2017 fashionexpress. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var profileTableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        profileTableview.delegate = self
        profileTableview.dataSource = self
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else if section == 1 {
            return 2
        } else if section == 2 {
            return 1
        } else if section == 3 {
            return 1
        } else {
            return 1
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! ProfileTableViewCell
            return cell1
        } else if indexPath.section == 1 {
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! AddressTableViewCell
            return cell2
        } else if indexPath.section == 2 {
            let cell3 = tableView.dequeueReusableCell(withIdentifier: "cell3", for: indexPath) as! PasswordTableViewCell
            return cell3
        } else if indexPath.section == 3 {
            let cell4 = tableView.dequeueReusableCell(withIdentifier: "cell4", for: indexPath) as! ShareAppTableViewCell
            return cell4
        } else {
            let cell5 = tableView.dequeueReusableCell(withIdentifier: "cell5", for: indexPath) as! AboutusTableViewCell
            return cell5
        }
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return ""
        } else if section == 1 {
            return "SHIPPING ADDRESS"
        } else if section == 2 {
            return "PASSWORD"
        } else if section == 3 {
            return "INVITE FRIENDS"
        } else {
            return "ABOUT US"
        }
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.rgb(displayP3Red: 249, green: 249, blue: 249)
        
        let headerLabel = UILabel(frame: CGRect(x: 20, y: 5, width: tableView.bounds.size.width, height: tableView.bounds.size.height))
        headerLabel.font = UIFont(name: "Avenir Next", size: 14)
        headerLabel.textColor = UIColor.black
        headerLabel.text = self.tableView(self.profileTableview, titleForHeaderInSection: section)
        headerLabel.sizeToFit()
        
        let button = UIButton(frame: CGRect(x: tableView.bounds.size.width - 100, y: 0, width: 100, height: 30))
        button.setTitleColor(UIColor.rgb(displayP3Red: 112, green: 122, blue: 148), for: .normal)
        button.titleLabel?.font = UIFont(name: "Avenir Next", size: 14)
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.subheadline)
        if section == 1 {
            button.setTitle("Add", for: .normal)
            button.addTarget(self, action: #selector(addAddress), for: .touchUpInside)
            headerView.addSubview(button)
        } else if section == 2 {
            button.setTitle("Change", for: .normal)
            button.addTarget(self, action: #selector(changePassword), for: .touchUpInside)
            headerView.addSubview(button)
        } else {
            // Do Not add button
        }
        
        headerView.addSubview(headerLabel)
        return headerView
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 3 {
            // Invite friends
            let textToShare = ["Demo Share Kamesh", UIImage(named: "user")] as [Any]
            //let linkToShare = ["https://itunes.apple.com/us/app/wateron-by-smarterhomes/id1109884714?mt=8"] as [Any]
            let activityVC = UIActivityViewController(activityItems: textToShare, applicationActivities: nil)
            activityVC.popoverPresentationController?.sourceView = self.view
            self.present(activityVC, animated: true, completion: nil)
        }
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 0
        } else {
            return 30
        }
    }
    @objc func addAddress() {
        print("Add Address")
    }
    @objc func changePassword() {
        print("Change Password")
    }
}
