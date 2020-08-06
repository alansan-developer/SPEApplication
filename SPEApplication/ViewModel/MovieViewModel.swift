//
//  MovieViewModel.swift
//  SPEApplication
//
//  Created by Alan Santoso on 06/08/20.
//  Copyright © 2020 Alan Santoso. All rights reserved.
//

import Foundation


class MovieViewModel {
    
    var movies = [Movie]()
    
    init() {
        movies.append(Movie(title: "along with the gods", description: "this description of along with the gods"))
        movies.append(Movie(title: "Avengers", description: "this description of Avengers"))
        movies.append(Movie(title: "Beauty Inside", description: "this description of Avengers"))
        movies.append(Movie(title: "Bitter Sweet", description: "this description of Avengers"))
        movies.append(Movie(title: "Captain Marvel", description: "this description of Avengers"))
        movies.append(Movie(title: "Greatest Showman", description: "this description of Avengers"))
        movies.append(Movie(title: "Imperfect", description: "this description of Avengers"))
        movies.append(Movie(title: "On Your Wedding Day", description: "this description of Avengers"))
        movies.append(Movie(title: "Tune In For Love", description: "this description of Avengers"))
        movies.append(Movie(title: "Warewolf", description: "this description of Avengers"))
    }
    
}
