//
//  ViewController.swift
//  jsonTest
//
//  Created by West Kraemer on 1/22/19.
//  Copyright © 2019 West Kraemer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //API Key: 5ca10b2d20a545099a108a3aeceb329c
        //url: https://newsapi.org/v2/top-headlines?country=us&apiKey=5ca10b2d20a545099a108a3aeceb329c
        
        
        // model
        
        struct Source: Decodable {
            var id: String
            var name: String
        }
        
        struct Articles: Decodable {
            var source: Source
            var author: String
            var title: String
            var description: String
            var url: String
            var urlToImage: String
            var publishedAt: String
            var content: String
            
        }
        
        struct JSONDescription: Decodable {
            var status: String
            var totalResults: Int
            var articles: Articles
        }
        
        
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=5ca10b2d20a545099a108a3aeceb329c")
        
        URLSession.shared.dataTask(with: url!) { data, response, error in
        guard error == nil,
            let data = data else {
                print(error)
                return
        }
            
        let jsonDescription = try? JSONDecoder().decode(JSONDescription.self, from: data)
        
            print(jsonDescription?.articles.author)
            
        
    }


}

}
