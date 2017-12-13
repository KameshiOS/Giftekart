//
//  MyOrdersViewController.swift
//  Giftekart
//
//  Created by Kamesh on 13/12/17.
//  Copyright © 2017 fashionexpress. All rights reserved.
//

import UIKit

class MyOrdersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myOrderTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        myOrderTable.delegate = self
        myOrderTable.dataSource = self
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyOrderTableViewCell
        return cell
    }
}
