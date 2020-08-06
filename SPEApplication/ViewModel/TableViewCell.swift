//
//  TableViewCell.swift
//  SPEApplication
//
//  Created by Alan Santoso on 06/08/20.
//  Copyright © 2020 Alan Santoso. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var imageMovie: UIImageView!
    @IBOutlet weak var titleText: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(movie: Movie){
        imageMovie.image = UIImage(named: movie.title)
        titleText.text = movie.title
    }


}
