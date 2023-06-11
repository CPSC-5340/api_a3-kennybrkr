//
//  ViewModel.swift
//  Assignment3
//
//  Created by Wendy Barker on 6/11/23.
//

import Foundation

class ViewModel : ObservableObject {
    @Published private(set) var Data = [ResultModel]()
    private let url = "https://opentdb.com/api.php?amount=10"
    
    func fetchData() {
        if let url = URL(string: url) {
            URLSession
                .shared
                .dataTask(with: url) { (results, response, error) in
                    if let error = error {
                        print(error)
                    } else {
                        if let results = results {
                            do {
                                let result = try JSONDecoder().decode(QuizModel.self, from: results)
                                self.Data = result.results
                            } catch {
                                print(error)
                            }
                        }
                    }
                }.resume()
        }
    }
    
    
}
