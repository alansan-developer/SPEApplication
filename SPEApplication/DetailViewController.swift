//
//  DetailViewController.swift
//  SPEApplication
//
//  Created by Alan Santoso on 06/08/20.
//  Copyright © 2020 Alan Santoso. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imagePoster: UIImageView!
    
    @IBOutlet weak var titleText: UILabel!
    
    @IBOutlet weak var descriptionText: UILabel!
    
    var titleName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(titleName)
        titleText.text = titleName
        descriptionText.text = "This is description of movie \(titleName)"
        imagePoster.image = UIImage(named: titleName)
        
    }
    



}
