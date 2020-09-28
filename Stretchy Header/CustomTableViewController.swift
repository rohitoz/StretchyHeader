//
//  CustomTableViewController.swift
//  Stretchy Header
//
//  Created by Hindavi Technologies on 28/09/20.
//  Copyright © 2020 Hindavi Technologies. All rights reserved.
//

import Foundation
import UIKit

class CustomTableViewController: UITableViewController {
    
    var imageView: UIImageView? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.contentInset = UIEdgeInsets(top: 250, left: 0, bottom: 0, right: 0)
    }
}

extension CustomTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 40
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Hindavi Technologies"
        return cell
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let y = -scrollView.contentOffset.y
        let height = max(y, 120)
        imageView?.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: height)
    }
}
