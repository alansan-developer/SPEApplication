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
    var movie:Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleText.text = movie?.title
        descriptionText.text = movie?.description
        imagePoster.image = UIImage(named: movie!.title)
        
    }
    



}
