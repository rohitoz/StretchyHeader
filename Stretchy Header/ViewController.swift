//
//  ViewController.swift
//  Stretchy Header
//
//  Created by Hindavi Technologies on 28/09/20.
//  Copyright © 2020 Hindavi Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let myTable = CustomTableViewController()
        self.addChild(myTable)
        view.addSubview(myTable.tableView)
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "HindaviLogo")
        imageView.backgroundColor = .green
        imageView.contentMode = .center
        imageView.clipsToBounds = true
        imageView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 250)
        view.addSubview(imageView)
        
        myTable.imageView = imageView
    }

}

