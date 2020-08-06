//
//  ViewController.swift
//  SPEApplication
//
//  Created by Alan Santoso on 06/08/20.
//  Copyright © 2020 Alan Santoso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let movie = ["along with the gods", "Avengers", "Beauty Inside", "Bitter Sweet", "Captain Marvel", "Greatest Showman", "Imperfect", "On Your Wedding Day", "Tune In For Love", "Warewolf"]
    
    var indexPathChoose :IndexPath?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue", let destination = segue.destination as? DetailViewController {
                let detail = movie[indexPathChoose!.row]
                destination.titleName = detail
                print(detail)
        }
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movie.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        cell.titleText.text = movie[indexPath.row]
        cell.imageMovie.image = UIImage(named: movie[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        indexPathChoose = indexPath
        self.performSegue(withIdentifier: "detailSegue", sender: self)
    }
    
    
}

